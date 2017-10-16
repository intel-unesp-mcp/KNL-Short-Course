#define SIZE 40000
int prefetch(int *a, int *b)
{
  int i, sum = 0;
//  #pragma memref_control a:l2
//  #pragma noprefetch a
//  #pragma prefetch b
  for (i = 0; i<SIZE; i++)
    sum += a[i] * b[i];
  return sum;
}
#include <stdio.h>
int main()
{
  int i, arr1[SIZE], arr2[SIZE];
  for (i = 0; i<SIZE; i++) {
    arr1[i] = i;
    arr2[i] = i;
  }
  printf("Demonstrating the use of prefetch, noprefetch,\n"
      "and memref_control pragma together.\n");
  prefetch(arr1, arr2);
  return 0;
}
