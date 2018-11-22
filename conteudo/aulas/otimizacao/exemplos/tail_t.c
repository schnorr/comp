#include "shared.h"

int fac_accumulate( int n, int acum ){
    if (n < 2) return acum;
    return fac_accumulate( n - 1, acum * n);
}

int fac_accum_opt( int n, int acum ){
    if (n < 2) return 1;
    n+=1;
    while(--n > 1){
       acum *= n;
    }
    return acum;
}

int main(){
   int x;
   printf("x\n");
   scanf("%d", &x);

   double t1 = gettime();

   fac_accumulate(x, 1);

   double t2 = gettime();

   fac_accum_opt(x, 1);

   double t3 = gettime();

   printf("Tempo recursao calda:%lf\n", t2-t1);
   printf("Tempo recursao otimi:%lf\n", t3-t2);
}

