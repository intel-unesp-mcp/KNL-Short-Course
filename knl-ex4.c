#include <stdio.h>
#include <time.h>

int k=0;
int steps=0;
int stepstotal=300;
//int SIZE=1600000000;
int SIZE=160000000;
int SIZE2=5;//00;
int maxrange= 100;
int maxrange2= 150000000;

float *a;
int *b;
float *o;
float *d;

const int ARR_SIZE=160000000;

float aa[ARR_SIZE],dd[ARR_SIZE];
int bb[ARR_SIZE]; 

void fillarray() {

  int auxcont=0;
  int auxcont2=0;
  int auxval=0;
  int auxval2=0;

  srand(time(0));

  a = (float *)malloc(SIZE * sizeof(float));
  b = (int *)malloc(SIZE * sizeof(int));
  o = (float *)malloc(SIZE * sizeof(float));
  d = (float *)malloc(SIZE * sizeof(float));

  auxval=rand()%maxrange;


  for (auxcont2=0; auxcont2<SIZE; auxcont2+=1000){
    auxval=rand()%maxrange;

    //printf ( "auxval: %d auxcont2 %d \n", auxval, auxcont2 ); 	
    for (auxcont=auxcont2; auxcont<(auxcont2+SIZE2); auxcont++){
      a[auxcont]=auxval-auxcont;
      aa[auxcont]=auxval-auxcont;  
      
      b[auxcont]=rand()%maxrange2;
      bb[auxcont]=rand()%maxrange2;
      o[auxcont]=auxval*2-auxcont;
      d[auxcont]=auxval*3-auxcont;
      dd[auxcont]=auxval*3-auxcont; 
    }
  }
}

void sum3() {
  int auxcont=0;

  for (auxcont=0; auxcont<SIZE; auxcont++){
    //a[b[auxcont]]++;// = o[auxcont] +d[auxcont];
    a[b[auxcont]] += 1/d[auxcont];// + o[auxcont];// = o[auxcont] +d[auxcont];
  }

}

void sum4() {
  int auxcont=0;

  for (auxcont=0; auxcont<SIZE; auxcont++){
    aa[bb[auxcont]] += 1/dd[auxcont];// + o[auxcont];// = o[auxcont] +d[auxcont];
  }

  for (auxcont=0; auxcont<SIZE; auxcont++){
    dd[bb[auxcont]] += 1/aa[auxcont];// + o[auxcont];// = o[auxcont] +d[auxcont];
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
  printf ( "sum3() begin: %s - end: ", asctime (timeinfobegin) );
 
  int stepslocal=0;
  #pragma omp parallel for
  for (stepslocal=0; stepslocal < stepstotal; stepslocal ++) {
    //sum3();
    sum4();
  }	 

  time ( &rawtime );
  timeinfoend = localtime ( &rawtime );

  printf ( "sum3() begin:  - end: %s", asctime (timeinfoend) );

  return 0;
}
