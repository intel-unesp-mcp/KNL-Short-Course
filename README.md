# KNL Short Course

Verify the new AVX512 resources implemented:

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

knl-ex2.c => shows an example of matrix multiplication using scalar instructions, avx512 instructions and avx2 instructions.

