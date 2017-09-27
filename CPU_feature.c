#include <stdio.h>
#include "immintrin.h"



int main(int argc, char *argv[]) {

  printf(" _may_i_use_cpu_feature( _FEATURE_AVX512F ) %d",_may_i_use_cpu_feature( _FEATURE_AVX512F ) );
  printf(" _may_i_use_cpu_feature( _FEATURE_AVX512ER  ) %d",_may_i_use_cpu_feature( _FEATURE_AVX512ER  ) );
  printf(" _may_i_use_cpu_feature( _FEATURE_AVX512PF ) %d",_may_i_use_cpu_feature( _FEATURE_AVX512PF ) );
  printf(" _may_i_use_cpu_feature( _FEATURE_AVX512CD ) %d",_may_i_use_cpu_feature( _FEATURE_AVX512CD ) );
  printf(" _may_i_use_cpu_feature( _FEATURE_AVX512VL ) %d",_may_i_use_cpu_feature( _FEATURE_AVX512VL ) );
  printf(" _may_i_use_cpu_feature( _FEATURE_AVX512BW ) %d",_may_i_use_cpu_feature( _FEATURE_AVX512BW ) );
  printf(" _may_i_use_cpu_feature( _FEATURE_AVX512DQ ) %d",_may_i_use_cpu_feature( _FEATURE_AVX512DQ ) );
  printf(" _may_i_use_cpu_feature( _FEATURE_AVX512VBMI ) %d",_may_i_use_cpu_feature( _FEATURE_AVX512VBMI ) );

  return 0;
}
