# KNL Short Course

## Verify the new AVX512 resources implemented:

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

Verify the numa organization
```
numactl -H
```

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

knl-ex2.c => shows an example of matrix multiplication using scalar instructions, avx512 instructions and avx2 instructions.
