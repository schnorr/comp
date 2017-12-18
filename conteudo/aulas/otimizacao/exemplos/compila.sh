gcc t.c -c 
gcc -O0 z1.c -c
gcc -O0 z2.c -c
gcc z1.o t.o -o z1
gcc z2.o t.o -o z2
