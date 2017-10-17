const int ARR_SIZE=8000;
//const int ARR_SIZE=2112000000;
//int SIZE=2112000000;
int SIZE=211200000;

int main() {
  int auxcont;
  float *A;
  float *C;
  int *BB;
  int B[ARR_SIZE];
  int i;
  int j;
  int steps=90;
  int stepscount=0;

  A = (float *)malloc(SIZE * sizeof(float));
  C = (float *)malloc(SIZE * sizeof(float));
  BB = (int *)malloc(SIZE * sizeof(int));

  for(i = 0; i < ARR_SIZE; i++) {
    B[i]=i;
  } 

  for(i = 0; i < SIZE; i++) {
    A[i]=i+10;
    C[i]=i+52;      
    BB[i]=i; 
  }

  j =0;

  int  auxval;
  srand(time(0));
  auxval=rand()%2001;
  for(stepscount = 0; stepscount < steps; stepscount++) {
 
  for(i = 0; i < SIZE; i++) {
    A[BB[i]] += 1.0f/C[i] + auxval;
    //A[BB[j]] += 1.0f/C[i];
    //j++;
    //if ( j > 8000 ) j =0;
  }
  auxval=rand()%2001;
}

  free(A);
  free(C);
  free(BB);
}
