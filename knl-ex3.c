#include <stdio.h>
#include <time.h>

int k=0;
int steps=0;
int stepstotal=20;
int SIZE=1600000000;
int SIZE2=5;//00;
int maxrange= 100;

float *a;
float *b;
float *o;

void fillarray() {

  int auxcont=0;
  int auxcont2=0;
  int auxval=0;

  srand(time(0));

  a = (float *)malloc(SIZE * sizeof(float));
  b = (float *)malloc(SIZE * sizeof(float));
  o = (float *)malloc(SIZE * sizeof(float));

  auxval=rand()%maxrange;

  for (auxcont2=0; auxcont2<SIZE; auxcont2+=1000){
    auxval=rand()%maxrange;

    //printf ( "auxval: %d auxcont2 %d \n", auxval, auxcont2 ); 	
    for (auxcont=auxcont2; auxcont<(auxcont2+SIZE2); auxcont++){
      a[auxcont]=auxval+auxcont;
      b[auxcont]=auxval-auxcont;
      o[auxcont]=auxval*auxcont;
    }
  }
}

void sumArray() {

  int auxcont=0;
  #pragma omp parallel for
  for (auxcont=0; auxcont<SIZE; auxcont++){
      o[auxcont]=a[auxcont] + b[auxcont];
  }

}

void sumArray2() {

  int auxcont=0;
  #pragma omp parallel for
  for (auxcont=0; auxcont<SIZE; auxcont++){
      a[auxcont]=o[auxcont] + b[auxcont];
  }

}

void sumArrayNOVEC() {

  int auxcont=0;

  #pragma novector
  for (auxcont=0; auxcont<SIZE; auxcont++){
      o[auxcont]=a[auxcont] + b[auxcont];
  }

}

int main(int argc, char *argv[]) {
  time_t rawtime;
  struct tm * timeinfobegin;
  struct tm * timeinfoend; 


  time ( &rawtime );
  timeinfobegin = localtime ( &rawtime );
  printf ( "fillarray begin: %s - end: ", asctime (timeinfobegin) );
  
  fillarray();

  time ( &rawtime );
  timeinfoend = localtime ( &rawtime );
  printf ( "fillarray begin:  - end: %s",  asctime (timeinfoend));

  time ( &rawtime );
  timeinfobegin = localtime ( &rawtime );
  printf ( "sumArray() begin: %s - end: ", asctime (timeinfobegin) );
 
  for (k = steps; steps < stepstotal; steps ++) {
    sumArray();
    sumArray2();
  }	 

  time ( &rawtime );
  timeinfoend = localtime ( &rawtime );

  printf ( "sumArray() begin:  - end: %s", asctime (timeinfoend) );

/*
  time ( &rawtime );
  timeinfobegin = localtime ( &rawtime );
 
  printf ( "sumArrayNOVEC() begin: %s - end: ", asctime (timeinfobegin) );

  sumArrayNOVEC();

  time ( &rawtime );
  timeinfoend = localtime ( &rawtime );

  printf ( "sumArrayNOVEC() begin: - end: %s",  asctime (timeinfoend));
*/

  return 0;
}
