#include <stdio.h>
#include <time.h>
#include "immintrin.h"

int steps=0;
int stepstotal=2;
int SIZE=2112000000;
int maxrange= 2800;

float *a;
float *b;
float *c;
float *o;

void fillarray() {

  int auxcont=0;

  srand(time(0));
  a = (float *)malloc(SIZE * sizeof(float));
  b = (float *)malloc(SIZE * sizeof(float));
  c = (float *)malloc(SIZE * sizeof(float));
  o = (float *)malloc(SIZE * sizeof(float));

  int auxval=rand()%maxrange;

  //printf("auxval 1 %d \n", auxval);

  for (auxcont=0; auxcont<SIZE; auxcont++){
    a[auxcont]=auxval+10;
    b[auxcont]=auxval+52;
    c[auxcont]=auxval+5;
    o[auxcont]=auxval+20;
  }

}

void fma() {
  int auxcont=0;
  __m512 vin1;
  __m512 vin2;
  __m512 vin3;
  __m512 vout;

  for (auxcont = 0; auxcont < SIZE; auxcont += 16) {
    //printf("auxval 1 %d \n", k); 
    vin1 = _mm512_load_ps(&a[auxcont]);
    vin2 = _mm512_load_ps(&b[auxcont]);
    vin3 = _mm512_load_ps(&c[auxcont]);

    vout = _mm512_fmadd_ps(vin1, vin2, vin3);
    _mm512_store_ps(&o[auxcont], vout);
  }

  for (auxcont = 0; auxcont < SIZE; auxcont += 16) {
    //printf("auxval 1 %d \n", k); 
    vin1 = _mm512_load_ps(&a[auxcont]);
    vin2 = _mm512_load_ps(&b[auxcont]);
    vin3 = _mm512_load_ps(&o[auxcont]);

    vout = _mm512_fmadd_ps(vin3, vin1, vin2);
    _mm512_store_ps(&c[auxcont], vout);
  }

  for (auxcont = 0; auxcont < SIZE; auxcont += 16) {
    //printf("auxval 1 %d \n", k); 
    vin1 = _mm512_load_ps(&a[auxcont]);
    vin2 = _mm512_load_ps(&o[auxcont]);
    vin3 = _mm512_load_ps(&c[auxcont]);

    vout = _mm512_fmadd_ps(vin3, vin1, vin2);
    _mm512_store_ps(&b[auxcont], vout);
  }

  for (auxcont = 0; auxcont < SIZE; auxcont += 16) {
    //printf("auxval 1 %d \n", k); 
    vin1 = _mm512_load_ps(&o[auxcont]);
    vin2 = _mm512_load_ps(&b[auxcont]);
    vin3 = _mm512_load_ps(&c[auxcont]);

    vout = _mm512_fmadd_ps(vin3, vin1, vin2);
    _mm512_store_ps(&a[auxcont], vout);
  }

}

void scalar() {

  int auxcont=0;
  #pragma novector
  for (auxcont=0; auxcont<SIZE; auxcont++){
    o[auxcont] = (a[auxcont] * b[auxcont])+c[auxcont];
  }
  #pragma novector
  for (auxcont=0; auxcont<SIZE; auxcont++){
    c[auxcont] = (a[auxcont] * b[auxcont])+o[auxcont];
  }
  #pragma novector
  for (auxcont=0; auxcont<SIZE; auxcont++){
    b[auxcont] = (a[auxcont] * o[auxcont])+c[auxcont];
  }
  #pragma novector
  for (auxcont=0; auxcont<SIZE; auxcont++){
    a[auxcont] = (o[auxcont] * b[auxcont])+c[auxcont];
  }

}

void scalarAutovec() {

  int auxcont=0;
  for (auxcont=0; auxcont<SIZE; auxcont++){
    o[auxcont] = (a[auxcont] * b[auxcont])+c[auxcont];
  }
  for (auxcont=0; auxcont<SIZE; auxcont++){
    c[auxcont] = (a[auxcont] * b[auxcont])+o[auxcont];
  }
  for (auxcont=0; auxcont<SIZE; auxcont++){
    b[auxcont] = (a[auxcont] * o[auxcont])+c[auxcont];
  }
  for (auxcont=0; auxcont<SIZE; auxcont++){
    a[auxcont] = (o[auxcont] * b[auxcont])+c[auxcont];
  }

}

void freeall() {
  free(a);
  free(b);
  free(o);
}

int main()
{
  time_t rawtime;
  struct tm * timeinfo;

  time ( &rawtime );
  timeinfo = localtime ( &rawtime );
  printf ( "fill array: %s", asctime (timeinfo) );

  fillarray();

    time ( &rawtime );
    timeinfo = localtime ( &rawtime );
    printf ( "begin: %s", asctime (timeinfo) );

  int k=0;
  for (k = steps; steps < stepstotal; steps ++) {


    //fma();
    //scalar();
    scalarAutovec();  	

    time ( &rawtime );
    timeinfo = localtime ( &rawtime );
    printf ( "end: %s", asctime (timeinfo) );
  }

  freeall();
  printf("\n\n");
  return 0;
}
