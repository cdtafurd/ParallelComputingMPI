#include <stdio.h>
#include <string.h>
#include <mpi.h>
#include <math.h>

int main(int argc, char *argv[]){
    int done = 0, n, iam, tasks, l, rc;
    double PII = 3.141592653589793238462643;
    double mypi, pi, h, sum, x, a;
    MPI_Init(&argc, &argv);
    MPI_Comm_size(MPI_COMM_WORLD, &tasks);
    MPI_Comm_rank(MPI_COMM_WORLD, &iam);
    //printf(" %d \n", done);
    while(!done){
        if(iam == 0){
            printf("numbers of intervals: (0 quits) ");
            scanf("%d", &n);
        }
        MPI_Bcast(&n, 1, MPI_INT, 0, MPI_COMM_WORLD);
        done = 1;
    }
    h = 1.0/ (double)n;
    sum = 0.0;
    for (int i = iam + 1; i <= n; i+=tasks){
        x = h * ((double)i - 0.5);
        sum += 4.0 / (1.0 + x * x);
    }
    mypi = h * sum;
    MPI_Reduce(&mypi, &pi, 1, MPI_DOUBLE, MPI_SUM, 0, MPI_COMM_WORLD);
    if(iam == 0) printf("pi is approximately %.16f, Error is %.16f\n", pi, fabs(pi - PII));
    MPI_Finalize();
    return 0;
}
