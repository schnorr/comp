#include <stdio.h>
#include "size.h"
int x[SIZE];
int main () 
{
  double t1 = gettime();
  int i;
  for (i = 0; i < SIZE; i++){
    x[i] = 1;
  }
  double t2 = gettime();
  printf ("%f\n", t2 - t1);
}
