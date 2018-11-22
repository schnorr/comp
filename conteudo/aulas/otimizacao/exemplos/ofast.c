#include <stdio.h>
#include <math.h>

int main(){

  float a;

  scanf("%f", &a);

  if( (a*a)*(a*a) == (a*a*a*a) ){
    printf("Igual!\n");
  }else{
    printf("Diferente!\n");
  }

  float c = a*a*a*a;
  printf("%f\n", c);

}
