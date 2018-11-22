#include <stdio.h>
#include "shared.h"

int somar(int a, int b){
   return a+b;
}

int main(){
   int x, y, z;
   printf("x y z\n");
   scanf("%d %d %d", &x, &y, &z);

   double t1 = gettime();

   for(int i=0; i<z*1000000; i++){
      x = somar(x, y);
   }

   double t2 = gettime();

   printf("Resultado: %d\nTempo:%lf\n", x, t2-t1);
}
