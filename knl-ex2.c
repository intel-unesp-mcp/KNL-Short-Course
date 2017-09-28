#include <stdio.h>
#include <time.h>
#include "immintrin.h"

void print(char *name, float *a, int num) {
  int i;
  printf("%s =%6.1f",name,a[0]);
  
  for (i = 1; i < num; i++)
    printf(",%s%4.1f",(i&3)?"":" ",a[i]);

  printf("\n");
}

int k=0;
int steps=0;
int stepstotal=1000;
int SIZE=16000000;
int maxrange= 2800;

float *a;
float *b;
float *o;

void fillarray() {

  int auxcont=0;

  srand(time(0));
  a = (float *)malloc(SIZE * sizeof(float));
  b = (float *)malloc(SIZE * sizeof(float));
  o = (float *)malloc(SIZE * sizeof(float));

  int auxval=rand()%maxrange;

  //printf("auxval 1 %d \n", auxval);

  for (auxcont=0; auxcont<SIZE; auxcont++){
    a[auxcont]=auxval+10;
    b[auxcont]=auxval-1;
    o[auxcont]=auxval+20;
  }

}

int avx2() {

  int auxcont=0;

  __m256 simd1, simd2, simd3;

  for (k = steps; steps < stepstotal; steps ++) {
    for (k = 0; k < SIZE; k += 16) {

      simd1 = _mm256_load_ps(&a[k]);
      simd2 = _mm256_load_ps(&b[k]);
      simd3 = _mm256_add_ps(simd1, simd2);
      _mm256_store_ps(&o[k], simd3);
    }

    for (k = 0; k < SIZE; k += 16) {

      simd1 = _mm256_load_ps(&a[k]);
      simd2 = _mm256_load_ps(&o[k]);
      simd3 = _mm256_add_ps(simd1, simd2);
      _mm256_store_ps(&b[k], simd3);
    }

    for (k = 0; k < SIZE; k += 16) {

      simd1 = _mm256_load_ps(&o[k]);
      simd2 = _mm256_load_ps(&b[k]);
      simd3 = _mm256_add_ps(simd1, simd2);
      _mm256_store_ps(&a[k], simd3);
    }
  }
  return 0;
}

int avx() {

  int auxcont=0;
  __m512 simd1, simd2, simd3;

  for (k = steps; steps < stepstotal; steps ++) {
    for (k = 0; k < SIZE; k += 16) {

      simd1 = _mm512_load_ps(&a[k]);
      simd2 = _mm512_load_ps(&b[k]);
      simd3 = _mm512_add_ps(simd1, simd2);
      _mm512_store_ps(&o[k], simd3);
    }

    for (k = 0; k < SIZE; k += 16) {

      simd1 = _mm512_load_ps(&a[k]);
      simd2 = _mm512_load_ps(&o[k]);
      simd3 = _mm512_add_ps(simd1, simd2);
      _mm512_store_ps(&b[k], simd3);
    }

    for (k = 0; k < SIZE; k += 16) {

      simd1 = _mm512_load_ps(&o[k]);
      simd2 = _mm512_load_ps(&b[k]);
      simd3 = _mm512_add_ps(simd1, simd2);
      _mm512_store_ps(&a[k], simd3);
    }
  }
  return 0;
}

int scalar() {

  int auxcont=0;
/*
  float *a;
  float *b;
  float *o;

  srand(time(0));

  a = (float *)malloc(SIZE * sizeof(float));
  b = (float *)malloc(SIZE * sizeof(float));
  o = (float *)malloc(SIZE * sizeof(float));

  int auxval=rand()%maxrange;
  for (auxcont=0; auxcont<SIZE; auxcont++){
    //a[auxcont]=rand()%maxrange;
    //b[auxcont]=rand()%maxrange;
    //o[auxcont]=rand()%maxrange;
    a[auxcont]=auxval+10;
    b[auxcont]=auxval-1;
    o[auxcont]=auxval+20;
  }
  printf(" 1  \n");*/

  #pragma novector
  for (k = steps; steps < stepstotal; steps ++) {
//      printf(" 2  \n");
    #pragma novector
    for (auxcont=0; auxcont<SIZE; auxcont++){
//       printf(" 2.1  \n"); 
      o[k] = a[k] + b[k];
    }
    //    printf(" 3  \n");
    #pragma novector 
    for (auxcont=0; auxcont<SIZE; auxcont++){
    //         printf(" 3.1  \n"); 
      b[k] = a[k] + o[k];
    }
    //printf(" 4  \n");
    #pragma novector 
    for (auxcont=0; auxcont<SIZE; auxcont++){
      //       printf(" 4.1  \n"); 
      a[k] = o[k] + b[k];
    }
  }
  return 0;
}


int scalarautovec() {

  int auxcont=0;

  for (k = steps; steps < stepstotal; steps ++) {

    for (auxcont=0; auxcont<SIZE; auxcont++){
      o[k] = a[k] + b[k];
    }
    for (auxcont=0; auxcont<SIZE; auxcont++){
      b[k] = a[k] + o[k];
    }
    for (auxcont=0; auxcont<SIZE; auxcont++){
      a[k] = o[k] + b[k];
    }
  }
  return 0;
}

int main(int argc, char *argv[]) {
  time_t rawtime;
  struct tm * timeinfo;


  time ( &rawtime );
  timeinfo = localtime ( &rawtime );
  printf ( "fill array: %s", asctime (timeinfo) );
  
  fillarray();

  time ( &rawtime );
  timeinfo = localtime ( &rawtime );
  printf ( "avx begin: %s", asctime (timeinfo) );

  avx();

  time ( &rawtime );
  timeinfo = localtime ( &rawtime );
  printf ( "avx end: %s", asctime (timeinfo) );

/*
  time ( &rawtime );
  timeinfo = localtime ( &rawtime );
  printf ( "fill array: %s", asctime (timeinfo) );

  fillarray();

  time ( &rawtime );
  timeinfo = localtime ( &rawtime );
  printf ( "scalar begin: %s", asctime (timeinfo) );

  scalar();

  time ( &rawtime );
  timeinfo = localtime ( &rawtime );
  printf ( "scalar end: %s", asctime (timeinfo) );


  time ( &rawtime );
  timeinfo = localtime ( &rawtime );
  printf ( "fill array: %s", asctime (timeinfo) );

  fillarray();

  time ( &rawtime );
  timeinfo = localtime ( &rawtime );
  printf ( "scalar begin: %s", asctime (timeinfo) );

  scalarautovec();

  time ( &rawtime );
  timeinfo = localtime ( &rawtime );
  printf ( "scalar end: %s", asctime (timeinfo) );
*/

  return 0;
}
