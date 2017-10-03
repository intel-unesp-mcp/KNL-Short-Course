void Compress(float* restrict A, float* restrict B) {
  int i;
  int j;

  #pragma nounroll // Not needed in real-world calculation; used here to simplify assembly
  for( i = 0; i < 8000; i++ ) {
    if(A[i] != 0)
      B[j++] = A[i];
  }
}
