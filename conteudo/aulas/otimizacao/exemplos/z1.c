#include <stdio.h>
#include <sys/time.h>
#include "size.h"
int x[SIZE];
int main () 
{
  double t1 = gettime();
  int i;
  float y = 0.1;
  for (i = 0; i < SIZE; i++){
    x[i] = 1;
  }
  double t2 = gettime();
  printf ("%f\n", t2 - t1);
  return 0;
}
