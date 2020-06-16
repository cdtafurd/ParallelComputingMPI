#include <stdio.h>
#include <stdlib.h>
#include <omp.h>
#include <sys/time.h>
#include <time.h>
#include <mpi.h>

#define STB_IMAGE_IMPLEMENTATION
#include "stb/stb_image.h"
#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "stb/stb_image_write.h"

int width, height, channels, kernelUser, kernelSys, threads, j;
unsigned char *img, *blur_img, *blur_img_slave;
char *outputName;
size_t img_size, slave_size;
struct timeval tval_before, tval_after, tval_result;

// Function that returns a number between 0 and 255 for the channel pixel, based on kernel size
int getChannelValue(unsigned char *channel)
{
    unsigned char *p = channel;
    int cAux = 1;  // cAux increase per neightbor pixel that have a valid value for the channel
    int cVal = *p; // cVal sum each value of neightbor pixels
    for (int n = 1; n <= kernelSys; n++)
    {
        if ((p - (channels * width * n)) >= img)
        {
            cVal += *(p - (channels * width * n));
            cAux++;
        }
        if ((p + (channels * width * n)) <= img + img_size)
        {
            cVal += *(p + (channels * width * n));
            cAux++;
        }
    }
    for (int m = 1; m <= kernelSys; m++)
    {
        if ((p - (m * channels)) >= img)
        {
            cVal += *(p - (m * channels));
            cAux++;
            for (int n = 1; n <= kernelSys; n++)
            {
                if ((p - (channels * m) - ((width * n * channels))) >= img)
                {
                    cVal += *(p - (channels * m) - ((width * n * channels)));
                    cAux++;
                }
                if ((p - (channels * m) + ((width * n * channels))) <= img + img_size)
                {
                    cVal += *(p - (channels * m) + ((width * n * channels)));
                    cAux++;
                }
            }
        }
        if ((p + (m * channels)) <= img + img_size)
        {
            cVal += *(p + (m * channels));
            cAux++;
            for (int n = 1; n <= kernelSys; n++)
            {
                if ((p + (channels * m) - ((width * n * channels))) >= img)
                {
                    cVal += *(p + (channels * m) - ((width * n * channels)));
                    cAux++;
                }
                if ((p + (channels * m) + ((width * n * channels))) <= img + img_size)
                {
                    cVal += *(p + (channels * m) + ((width * n * channels)));
                    cAux++;
                }
            }
        }
    }
    return cVal / cAux; // Return the average color nubmer for the channel
};

void printResults()
{
    // Create a file called "blur_results.txt" if doesn't exist, otherwise, open file for appending results
    FILE *file;
    file = fopen("blur_results.txt", "a");

    timersub(&tval_after, &tval_before, &tval_result);

    time_t timet = time(0);
    struct tm *tlocal = localtime(&timet);
    char date[128], result[100], segs[4], usegs[6];

    sprintf(segs, "%ld", tval_result.tv_sec);
    sprintf(usegs, "%ld", tval_result.tv_usec);
    strftime(date, 128, "%d/%m/%y %H:%M:%S", tlocal);

    // Prints the results on the file
    fputs("\n****  Results for ", file);
    fputs(outputName, file);
    fputs(" with a kernel value of: ", file);
    sprintf(result, "%d", kernelUser);
    fputs(result, file);
    fputs(" and ", file);
    sprintf(result, "%d", threads);
    fputs(result, file);
    fputs(" proccess.  ****\n", file);
    fputs("DATE: ", file);
    fputs(date, file);
    fputs("\n\n", file);
    fputs("Execution time: ", file);
    fputs(segs, file);
    fputs(".", file);
    fputs(usegs, file);
    fputs("\n", file);

    // Close the results file
    fclose(file);
}

int main(int argc, char *argv[])
{

    // Set outputName, kernel and threads variables
    outputName = argv[2];
    kernelUser = atoi(argv[3]);
    kernelSys = atoi(argv[3]) / 2; // Set the kernel value to a side measure of total matrix (pixel and neightbors)

    int iam, tasks;
    
    MPI_Init(&argc, &argv);
    MPI_Comm_size(MPI_COMM_WORLD, &tasks);
    MPI_Comm_rank(MPI_COMM_WORLD, &iam);

    threads = tasks;
    printf("\nKernel: %d, Threads: %d \n", kernelUser, threads);

    // Try to read de image with argv[1] as image name
    img = stbi_load(argv[1], &width, &height, &channels, 0);
    printf("Reading image %s ...\n", argv[1]);

    // Prints an error if cannot load image
    if (img == NULL)
    {
        printf("Error while loading image %s\n", argv[1]);
        exit(1);
    }

    // Show image properties
    printf("\n%s properties:\n\tWidth: %d \tHeight: %d\n\tChannels: %d\n\n", argv[1], width, height, channels);

    if (iam == 0)
        gettimeofday(&tval_before, NULL); // ---- INITIAL TIME

    // Set image size
    img_size = width * height * channels;
    slave_size =  img_size / tasks;

    if (iam == 0)
    {
        // Allocate memory for bluur image
        printf("Allocating memory for blur image...\n");
        blur_img = malloc(img_size);

        // Prints an error if cannot allocate memory for bluur image
        if (blur_img == NULL)
        {
            printf("Unable to allocate memory for blur image.\n");
            exit(1);
        }

        printf("Memory allocated successfully\nProcessing image pixels...\n");
    }

    blur_img_slave = (unsigned char*)malloc(sizeof(unsigned char) * slave_size );
        if (blur_img_slave == NULL)
        {
            printf("Unable to allocate memory for blur image.\n");
            exit(1);
        }



    int threadId = iam;

    // Define the range for each thread between init and end variables
    int init = width * height * channels / threads * threadId;
    int end = init + (width * height * channels / threads) - 1;

    unsigned char *p = img + init, *pg = blur_img_slave;
    do
    {
        // Set values to each channel, R G B.
        *pg = getChannelValue(p);
        *(pg + 1) = getChannelValue(p + 1);
        *(pg + 2) = getChannelValue(p + 2);
        // Four channel on pixel in png images equals to transparency level
        if (channels == 4)
        {
            *(pg + 3) = *(p + 3);
        }
        // Change to the next pixel
        p += channels;
        pg += channels;
    } while (p <= img + end);

    MPI_Gather(blur_img_slave, slave_size, MPI_UNSIGNED_CHAR, blur_img, slave_size, MPI_UNSIGNED_CHAR, 0, MPI_COMM_WORLD);

    if (iam == 0){
        stbi_write_jpg(outputName, width, height, channels, blur_img, 100);
        printf("JPG image writed successfully.\n");
    }

    // Free memory after read and write image
    stbi_image_free(img);
    if (iam == 0)
        free(blur_img);
    free(blur_img_slave);
    printf("Closing image...\n");

    if (iam == 0) {
        gettimeofday(&tval_after, NULL); // ---- ENDING TIME
        printResults();
    }
    

    MPI_Finalize();

    return 0;
}
