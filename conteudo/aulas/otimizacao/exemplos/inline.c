#include <stdio.h>

int somar(int a, int b){
   return a+b;
}

int main(){
   int x, y;
   scanf("%d %d", &x, &y);
   int z = somar(x, y);
   printf("Resultado: %d\n", z);
}
