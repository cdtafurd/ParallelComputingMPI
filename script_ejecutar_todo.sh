#! /bin/bash

#compilar blur-effect.c
mpicc -std=c11 -Wall mpi_blur.c -o blur -lm -D_DEFAULT_SOURCE

# ****  1. CPU - secuencial --------------------------------------------

# 720p - kernel de 3
time mpirun -np 1 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 3

# 1080p - kernel de 3
time mpirun -np 1 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 3 

# 4k - kernel de 3
time mpirun -np 1 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 3 

# 720p - kernel de 5
time mpirun -np 1 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 5 

# 1080p - kernel de 5
time mpirun -np 1 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 5 

# 4k - kernel de 5
time mpirun -np 1 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 5 

# 720p - kernel de 7
time mpirun -np 1 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 7 

# 1080p - kernel de 7
time mpirun -np 1 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 7 

# 4k - kernel de 7
time mpirun -np 1 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 7 

# 720p - kernel de 9
time mpirun -np 1 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 9 

# 1080p - kernel de 9
time mpirun -np 1 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 9 

# 4k - kernel de 9
time mpirun -np 1 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 9 

# 720p - kernel de 11
time mpirun -np 1 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 11 

# 1080p - kernel de 11
time mpirun -np 1 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 11 

# 4k - kernel de 11
time mpirun -np 1 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 11 

# 720p - kernel de 13
time mpirun -np 1 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 13 

# 1080p - kernel de 13
time mpirun -np 1 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 13 

# 4k - kernel de 13
time mpirun -np 1 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 13 

# 720p - kernel de 15
time mpirun -np 1 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 15 

# 1080p - kernel de 15
time mpirun -np 1 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 15 

# 4k - kernel de 15
time mpirun -np 1 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 15 


# ****  2. CPU -  ------------------------------------------------

# ****  2 procesos -------------------------------------------------------------

# 720p - kernel de 3
time mpirun -np 2 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 3

# 1080p - kernel de 3
time mpirun -np 2 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 3 

# 4k - kernel de 3
time mpirun -np 2 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 3 

# 720p - kernel de 5
time mpirun -np 2 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 5 

# 1080p - kernel de 5
time mpirun -np 2 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 5 

# 4k - kernel de 5
time mpirun -np 2 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 5 

# 720p - kernel de 7
time mpirun -np 2 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 7 

# 1080p - kernel de 7
time mpirun -np 2 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 7 

# 4k - kernel de 7
time mpirun -np 2 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 7 

# 720p - kernel de 9
time mpirun -np 2 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 9 

# 1080p - kernel de 9
time mpirun -np 2 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 9 

# 4k - kernel de 9
time mpirun -np 2 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 9 

# 720p - kernel de 11
time mpirun -np 2 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 11 

# 1080p - kernel de 11
time mpirun -np 2 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 11 

# 4k - kernel de 11
time mpirun -np 2 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 11 

# 720p - kernel de 13
time mpirun -np 2 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 13 

# 1080p - kernel de 13
time mpirun -np 2 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 13 

# 4k - kernel de 13
time mpirun -np 2 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 13 

# 720p - kernel de 15
time mpirun -np 2 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 15 

# 1080p - kernel de 15
time mpirun -np 2 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 15 

# 4k - kernel de 15
time mpirun -np 2 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 15 

# ****  4 procesos -------------------------------------------------------------

# 720p - kernel de 3
time mpirun -np 4 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 3

# 1080p - kernel de 3
time mpirun -np 4 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 3 

# 4k - kernel de 3
time mpirun -np 4 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 3 

# 720p - kernel de 5
time mpirun -np 4 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 5 

# 1080p - kernel de 5
time mpirun -np 4 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 5 

# 4k - kernel de 5
time mpirun -np 4 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 5 

# 720p - kernel de 7
time mpirun -np 4 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 7 

# 1080p - kernel de 7
time mpirun -np 4 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 7 

# 4k - kernel de 7
time mpirun -np 4 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 7 

# 720p - kernel de 9
time mpirun -np 4 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 9 

# 1080p - kernel de 9
time mpirun -np 4 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 9 

# 4k - kernel de 9
time mpirun -np 4 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 9 

# 720p - kernel de 11
time mpirun -np 4 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 11 

# 1080p - kernel de 11
time mpirun -np 4 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 11 

# 4k - kernel de 11
time mpirun -np 4 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 11 

# 720p - kernel de 13
time mpirun -np 4 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 13 

# 1080p - kernel de 13
time mpirun -np 4 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 13 

# 4k - kernel de 13
time mpirun -np 4 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 13 

# 720p - kernel de 15
time mpirun -np 4 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 15 

# 1080p - kernel de 15
time mpirun -np 4 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 15 

# 4k - kernel de 15
time mpirun -np 4 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 15 

# ****  6 procesos -------------------------------------------------------------

# 720p - kernel de 3
time mpirun -np 6 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 3

# 1080p - kernel de 3
time mpirun -np 6 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 3 

# 4k - kernel de 3
time mpirun -np 6 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 3 

# 720p - kernel de 5
time mpirun -np 6 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 5 

# 1080p - kernel de 5
time mpirun -np 6 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 5 

# 4k - kernel de 5
time mpirun -np 6 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 5 

# 720p - kernel de 7
time mpirun -np 6 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 7 

# 1080p - kernel de 7
time mpirun -np 6 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 7 

# 4k - kernel de 7
time mpirun -np 6 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 7 

# 720p - kernel de 9
time mpirun -np 6 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 9 

# 1080p - kernel de 9
time mpirun -np 6 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 9 

# 4k - kernel de 9
time mpirun -np 6 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 9 

# 720p - kernel de 11
time mpirun -np 6 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 11 

# 1080p - kernel de 11
time mpirun -np 6 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 11 

# 4k - kernel de 11
time mpirun -np 6 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 11 

# 720p - kernel de 13
time mpirun -np 6 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 13 

# 1080p - kernel de 13
time mpirun -np 6 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 13 

# 4k - kernel de 13
time mpirun -np 6 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 13 

# 720p - kernel de 15
time mpirun -np 6 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 15 

# 1080p - kernel de 15
time mpirun -np 6 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 15 

# 4k - kernel de 15
time mpirun -np 6 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 15 

# ****  8 procesos -------------------------------------------------------------

# 720p - kernel de 3
time mpirun -np 8 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 3

# 1080p - kernel de 3
time mpirun -np 8 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 3 

# 4k - kernel de 3
time mpirun -np 8 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 3 

# 720p - kernel de 5
time mpirun -np 8 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 5 

# 1080p - kernel de 5
time mpirun -np 8 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 5 

# 4k - kernel de 5
time mpirun -np 8 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 5 

# 720p - kernel de 7
time mpirun -np 8 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 7 

# 1080p - kernel de 7
time mpirun -np 8 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 7 

# 4k - kernel de 7
time mpirun -np 8 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 7 

# 720p - kernel de 9
time mpirun -np 8 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 9 

# 1080p - kernel de 9
time mpirun -np 8 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 9 

# 4k - kernel de 9
time mpirun -np 8 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 9 

# 720p - kernel de 11
time mpirun -np 8 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 11 

# 1080p - kernel de 11
time mpirun -np 8 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 11 

# 4k - kernel de 11
time mpirun -np 8 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 11 

# 720p - kernel de 13
time mpirun -np 8 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 13 

# 1080p - kernel de 13
time mpirun -np 8 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 13 

# 4k - kernel de 13
time mpirun -np 8 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 13 

# 720p - kernel de 15
time mpirun -np 8 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 15 

# 1080p - kernel de 15
time mpirun -np 8 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 15 

# 4k - kernel de 15
time mpirun -np 8 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 15 

# ****  10 procesos -------------------------------------------------------------

# 720p - kernel de 3
time mpirun -np 10 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 3

# 1080p - kernel de 3
time mpirun -np 10 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 3 

# 4k - kernel de 3
time mpirun -np 10 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 3 

# 720p - kernel de 5
time mpirun -np 10 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 5 

# 1080p - kernel de 5
time mpirun -np 10 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 5 

# 4k - kernel de 5
time mpirun -np 10 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 5 

# 720p - kernel de 7
time mpirun -np 10 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 7 

# 1080p - kernel de 7
time mpirun -np 10 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 7 

# 4k - kernel de 7
time mpirun -np 10 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 7 

# 720p - kernel de 9
time mpirun -np 10 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 9 

# 1080p - kernel de 9
time mpirun -np 10 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 9 

# 4k - kernel de 9
time mpirun -np 10 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 9 

# 720p - kernel de 11
time mpirun -np 10 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 11 

# 1080p - kernel de 11
time mpirun -np 10 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 11 

# 4k - kernel de 11
time mpirun -np 10 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 11 

# 720p - kernel de 13
time mpirun -np 10 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 13 

# 1080p - kernel de 13
time mpirun -np 10 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 13 

# 4k - kernel de 13
time mpirun -np 10 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 13 

# 720p - kernel de 15
time mpirun -np 10 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 15 

# 1080p - kernel de 15
time mpirun -np 10 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 15 

# 4k - kernel de 15
time mpirun -np 10 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 15 

# ****  12 procesos -------------------------------------------------------------

# 720p - kernel de 3
time mpirun -np 12 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 3

# 1080p - kernel de 3
time mpirun -np 12 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 3 

# 4k - kernel de 3
time mpirun -np 12 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 3 

# 720p - kernel de 5
time mpirun -np 12 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 5 

# 1080p - kernel de 5
time mpirun -np 12 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 5 

# 4k - kernel de 5
time mpirun -np 12 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 5 

# 720p - kernel de 7
time mpirun -np 12 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 7 

# 1080p - kernel de 7
time mpirun -np 12 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 7 

# 4k - kernel de 7
time mpirun -np 12 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 7 

# 720p - kernel de 9
time mpirun -np 12 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 9 

# 1080p - kernel de 9
time mpirun -np 12 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 9 

# 4k - kernel de 9
time mpirun -np 12 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 9 

# 720p - kernel de 11
time mpirun -np 12 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 11 

# 1080p - kernel de 11
time mpirun -np 12 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 11 

# 4k - kernel de 11
time mpirun -np 12 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 11 

# 720p - kernel de 13
time mpirun -np 12 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 13 

# 1080p - kernel de 13
time mpirun -np 12 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 13 

# 4k - kernel de 13
time mpirun -np 12 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 13 

# 720p - kernel de 15
time mpirun -np 12 --hostfile mpi_hosts blur 720p.jpg 720p_blur.jpg 15 

# 1080p - kernel de 15
time mpirun -np 12 --hostfile mpi_hosts blur 1080p.jpg 1080p_blur.jpg 15 

# 4k - kernel de 15
time mpirun -np 12 --hostfile mpi_hosts blur 4k.jpg 4k_blur.jpg 15 