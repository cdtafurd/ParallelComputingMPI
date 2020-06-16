exit
cd
ls
cat hello_world 
cd .ssh
ls
cat authorized_keys 
exit
cd
ls
nano hello_world
ssh-keygen
cd .ssh
ls
cat id_rsa.pub 
nano authorized_keys
ls
cat authorized_keys 
cat id_rsa.pub 
cd
ls
pwd
nano mpi_hosts
ls
nano mpi_test.c
ls
mpicc mpi_test.c -o test
mpirun -np 2 ./test
mpirun --hostfile mpi_hosts -np 2 ./test
mpirun -np 4 --hostfile mpi_hosts ./test
mpirun -np 4 ./test
ls
mpirun -np 1 --hostfile mpi_hosts ./test
ssh mpiuser@cluster-nodo1
mpirun -np 2 --hostfile mpi_hosts ./test
cd .ssh
ls
cat known_hosts 
cd
mpirun -np 2 --hostfile mpi_hosts ./test
mpirun -np 4 --hostfile mpi_hosts ./test
ls
nano mpi_hosts 
mpirun -np 4 --hostfile mpi_hosts ./test
exit
cd
ls
mpirun -np 2 --hostfile mpi_hosts ./test
exit
cd
ls
nano mpi_bcast.c
mpicc mpi_bcast.c -o bcast
mpirun -np 4 --hostfile mpi_hosts ./bcast
nano mpi_gather.c
ls
mpicc mpi_gather.c -o gather
mpirun -np 4 --hostfile mpi_hosts ./gather
mpirun -np 4 --hostfile mpi_hosts ./bcast
ls
nano mpi_bcast.c 
mpicc mpi_bcast.c -o bcast
mpirun -np 4 --hostfile mpi_hosts bcast 
ls
nano mpi_scatter.c -o scatter
nano mpi_scatter.c
mpicc mpi_scatter.c -o scatter
mpirun -np 4 --hostfile mpi_hosts scatter 
nano mpi_hosts 
ssh mpiuser@cluster-nodo2
ls
cat mpi_hosts 
mpirun -np 4 --hostfile mpi_hosts scatter 
mpirun -np 6 --hostfile mpi_hosts scatter 
ls
nano mpi_pi.c
mpicc npi_pi.c -o pi
nano mpi_pi.c
ls
mpicc npi_pi.c -o pi
mpicc mpi_pi.c -o pi
mpirun -np 6 --hostfile mpi_hosts pi
time mpirun -np 6 --hostfile mpi_hosts pi
exit
cd
ls
cd .ssh
ls
cat authorized_keys 
cd
exit
cd
ls
nano mpi_blur.c
ls
mpicc -std=c11 -Wall blur_mpi.c -o blur -lpthread -lm -D_DEFAULT_SOURCE
mpicc -std=c11 -Wall mpi_blur.c -o blur -lpthread -lm -D_DEFAULT_SOURCE
ls
mkdir stb
ls
exit
cd
ls
cd stb/
ls
cd ..
mpicc -std=c11 -Wall mpi_blur.c -o blur -lpthread -lm -D_DEFAULT_SOURCE
ls
exit
cd
ls
pwd
ls
ls
cd
ls
exit
cd
ls
mpirun -np 4 ./blur 720p.jpg 720p_blur.jpg 3
ls
mpirun -np 4 --hostfile mpi_hosts ./blur 720p.jpg 720p_blur.jpg 3
mpirun -np 6 --hostfile mpi_hosts ./blur 720p.jpg 720p_blur.jpg 3
mpirun -np 16 --hostfile mpi_hosts ./blur 720p.jpg 720p_blur.jpg 3
mpirun -np 8 --hostfile mpi_hosts ./blur 720p.jpg 720p_blur.jpg 3
mpirun -np 6 --hostfile mpi_hosts ./blur 720p.jpg 720p_blur.jpg 3
ls
cat blur_results.txt 
mpirun -np 6 --hostfile mpi_hosts ./blur 720p.jpg 720p_blur.jpg 3
cat blur_results.txt 
ls
nano mpi_blur.c 
mpicc -std=c11 -Wall mpi_blur.c -o blur -lm -D_DEFAULT_SOURCE
rm -9 720p_blur.jpg 
rm -rf 720p_blur.jpg 
mpirun -np 6 --hostfile mpi_hosts ./blur 720p.jpg 720p_blur.jpg 3
ls
cat blur_results.txt 
ls
exit
ssh mpiuser@cluster-nodo4
exit
cd
ls
ssh mpiuser@cluster-nodo3
ssh mpiuser@cluster-nodo4
ssh mpiuser@cluster-nodo5
ls
cat mpi_hosts 
nano mpi_hosts 
mpirun -np 12 --hostfile mpi_hosts bcast
mpirun -np 14 --hostfile mpi_hosts bcast
ls
exit
cd
ls
rm -rf 720p_blur.jpg 
ls
cat blur_results.txt 
rm -rf blur_results.txt 
ls
./script_ejecutar_todo.sh
sudo ./script_ejecutar_todo.sh
chmod 775 script_ejecutar_todo.sh 
sudo chmod 775 script_ejecutar_todo.sh 
exit
