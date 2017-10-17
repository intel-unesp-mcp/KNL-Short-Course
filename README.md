# KNL Short Course

## Verify the new AVX-512 resources implemented:

cat /proc/cpuinfo | grep flags | head -n 1

```
flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx pdpe1gb rdtscp lm constant_tsc arch_perfmon pebs bts rep_good nopl xtopology nonstop_tsc aperfmperf eagerfpu pni pclmulqdq dtes64 monitor ds_cpl est tm2 ssse3 fma cx16 xtpr pdcm sse4_1 sse4_2 x2apic movbe popcnt tsc_deadline_timer aes xsave avx f16c rdrand lahf_lm abm 3dnowprefetch ida arat epb pln pts dtherm fsgsbase tsc_adjust bmi1 avx2 smep bmi2 erms avx512f rdseed adx avx512pf avx512er avx512cd xsaveopt
```

avx-512 flags are present:

```
avx512f rdseed adx avx512pf avx512er avx512cd
```

Another mechanism to identify the AVX-512 support is using the function: _may_i_use_cpu_feature

```
icc CPU_feature.c -o CPU_feature
./CPU_feature
```

Verify the processor and cache topology

```
lstopo
```

Show numa organization
```
numactl -H
```

## Map an Application to MCDRAM or DRAM

Map to DRAM:

```
numactl -m 0,1,2,3
```

Map to MCDRAM:
```
numactl -m 4,5,6,7
```

Xeon AVX-2 | KNL AVX-512 DRAM | KNL AVX-512 MCDRAM
--- | --- | ---
13 | 9.5 | 

## Compile Code Using AVX-512:

KNL machine:
```
icc knl-ex1.c -o knl-ex1 -qopt-report=5 -xhost -g
```

non-KNL Machine:
```
icc knl-ex1.c -o knl-ex1 -qopt-report=5 -xMIC-AVX512 -g
```

Compilation using -S (compile to assembly only (.s) ):

AVX-2 - assembly
```
vmovups   (%rdi,%rcx,4), %ymm0                          
vaddps    (%r10,%rcx,4), %ymm0, %ymm1                   
vmovups   %ymm1, (%r9,%rcx,4)                           
vmovups   32(%rdi,%rcx,4), %ymm2                        
vaddps    32(%r10,%rcx,4), %ymm2, %ymm3                 
vmovups   %ymm3, 32(%r9,%rcx,4)                         
```

AVX-512 - assembly
```
vmovups   (%rsi,%r14,4), %zmm2                          
vmovups   64(%rsi,%r14,4), %zmm3                        
vaddps    (%rdi,%r14,4), %zmm2, %zmm4                   
vaddps    64(%rdi,%r14,4), %zmm3, %zmm5                 
vmovups   %zmm4, (%r9,%r14,4)                           
vmovups   %zmm5, 64(%r9,%r14,4)  
```

Compiling with AVX-512 and execute on Haswell:

```
icc knl-ex1.c -o knl-ex1 -xMIC-AVX512 -qopenmp
./knl-ex1 

Please verify that both the operating system and the processor support Intel(R) AVX512F, ADX, RDSEED, AVX512ER, AVX512PF and AVX512CD instructions.
```


## Nbody Example

"A. Duran and L. Meadows, “Chapter 9 - A Many-Core Implementation of the Direct
N-Body Problem,” in High Performance Parallelism Pearls: Multicore and Manycore
Programming Approaches, vol. 1, J. Reinders and J. Jeffers, Eds. Boston, MA,
USA: Morgan Kaufmann, 2015, pp. 159–174."

compiling nbody example:

```
icpc -O3 -fopenmp -fp-model fast=2 -qopt-report=5 -g -xhost -o nbody-v0s nbody-v0.cc
```

The following loop was compiled using AVX-512F using FMA Square, root and mask operations:

```
    for ( size_t j = i+1; j < n; ++j ) {	
	      real dx = x[j] - x[i], dy = y[j] - y[i], dz = z[j] - z[i];
	      real dist2 = dx*dx + dy*dy + dz*dz;	
	      real mOverDist3 = m[j] / (dist2 * Sqrt( dist2 ));	
	      dvx += mOverDist3 * dx;	
	      dvy += mOverDist3 * dy;	
	      dvz += mOverDist3 * dz;	
	  }
```

Nbody Execution Time Evaluation comparing XEON against KNL (Average of five executions):

Xeon AVX-2 | KNL AVX-512 
--- | --- 
13 | 9.5 

unpack and mask operations.

## ERI

### Option-price Example

S. Li, “Chapter 8 - Parallel Numerical Methods in Finance,” in High Performance
Parallelism Pearls Volume Two: Multicore and Many-core Programming
Approaches, vol. 2, J. Reinders and J. Jeffers, Eds. Boston, MA, USA: Morgan
Kaufmann, 2015, pp. 113–137.

Compiling Option price:

```
icpc -ltbbmalloc -xHOST -openmp -g -O3 -ipo -restrict -fimf-precision=low -fimf-domain-exclusion=31 -fno-alias -qopt-report=5  -DCOMPILER_VERSION=\""icpc-17.0.1"\" -o am_call_vp am_call.cpp
```

Execute Option price:

```
./am_call_vp
```

Option-price Execution Time Evaluation comparing XEON against KNL (Average of five executions):

Xeon AVX-2 | KNL AVX-512 
--- | --- 
23 | 7.5 

## Conflict Detection

Example based on Colfax WP "Capabilities of Intel® AVX-512 in Intel® Xeon® Scalable Processors (Skylake)" (https://colfaxresearch.com/skl-avx512)

```
for(i = 0; i < SIZE; i++) {
  A[BB[i]] += 1.0f/C[i] + auxval;
}

```

Xeon AVX-2 | KNL AVX-512 
--- | --- 
38 | 34 

## Pre-Fetch

put this option to enable the compiler to introduce intrinsics code for pre-fetch:

-qopt-prefetch=5
