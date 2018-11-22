#include <stdlib.h>
#include "shared.h"

#define SIZE 10000

int main(){
   int *mat = (int*)malloc(SIZE*SIZE*sizeof(int));

   double t1 = gettime();

   for(int i=0; i<SIZE; i++){
      for(int y=0; y<SIZE; y++){
         mat[i*SIZE + y] = 1;
      }
   }

   double t2 = gettime();

   for(int y=0; y<SIZE; y++){
      for(int i=0; i<SIZE; i++){
         mat[i*SIZE + y] = 1;
      }
   }

   double t3 = gettime();

   printf("I-Y:%lf\n", t2-t1);
   printf("Y-I:%lf\n", t3-t2);
}

