void ConditionalLoop(double * restrict A, double * restrict B, double * restrict C) {
  int i;
  for( i = 0; i < 10000; i++ ) {
    if(B[i] > 0.0)
      A[i] *= B[i];
    else
      A[i] += B[i];
  }
}
