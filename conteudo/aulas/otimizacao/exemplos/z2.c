#include <stdio.h>
#include "size.h"
int x[SIZE];
int main () 
{
  double t1 = gettime();
  register int *p;
  p = (int*)x;
  while((p < ((int*)x+SIZE))) {
    *p++ = 1;
  }
  double t2 = gettime();
  printf ("%f\n", t2 - t1);
  return 0;
}
