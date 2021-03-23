# Benchmark result (via Travis)


# Judge result
# Benchmark Report for */home/travis/build/biaslab/ReactiveMP.jl*

## Job Properties
* Time of benchmarks:
    - Target: 23 Mar 2021 - 17:21
    - Baseline: 23 Mar 2021 - 17:22
* Package commits:
    - Target: 6b305a
    - Baseline: a6e456
* Julia commits:
    - Target: 69fcb5
    - Baseline: 69fcb5
* Julia command flags:
    - Target: `-O3`
    - Baseline: `-O3`
* Environment variables:
    - Target: None
    - Baseline: None

## Results
A ratio greater than `1.0` denotes a possible regression (marked with :x:), while a ratio less
than `1.0` denotes a possible improvement (marked with :white_check_mark:). Only significant results - results
that indicate possible regressions or improvements - are shown below (thus, an empty table means that all
benchmark results remained invariant between builds).

| ID                                      | time ratio                   | memory ratio                 |
|-----------------------------------------|------------------------------|------------------------------|
| `["models", "lgssm2", "inference_500"]` | 0.01 (5%) :white_check_mark: | 0.05 (1%) :white_check_mark: |

## Benchmark Group List
Here's a list of all the benchmark groups executed by this job:

- `["models", "lgssm1"]`
- `["models", "lgssm2"]`

## Julia versioninfo

### Target
```
Julia Version 1.5.4
Commit 69fcb5745b (2021-03-11 19:13 UTC)
Platform Info:
  OS: Linux (x86_64-pc-linux-gnu)
      Ubuntu 16.04.6 LTS
  uname: Linux 4.15.0-1028-gcp #29~16.04.1-Ubuntu SMP Tue Feb 12 16:31:10 UTC 2019 x86_64 x86_64
  CPU: Intel(R) Xeon(R) CPU: 
              speed         user         nice          sys         idle          irq
       #1  2800 MHz      15840 s          0 s       1533 s      18116 s          0 s
       #2  2800 MHz      17452 s          0 s       1351 s      17000 s          0 s
       
  Memory: 7.790031433105469 GB (5731.92578125 MB free)
  Uptime: 360.0 sec
  Load Avg:  1.13671875  0.876953125  0.41455078125
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-9.0.1 (ORCJIT, cascadelake)
```

### Baseline
```
Julia Version 1.5.4
Commit 69fcb5745b (2021-03-11 19:13 UTC)
Platform Info:
  OS: Linux (x86_64-pc-linux-gnu)
      Ubuntu 16.04.6 LTS
  uname: Linux 4.15.0-1028-gcp #29~16.04.1-Ubuntu SMP Tue Feb 12 16:31:10 UTC 2019 x86_64 x86_64
  CPU: Intel(R) Xeon(R) CPU: 
              speed         user         nice          sys         idle          irq
       #1  2800 MHz      16294 s          0 s       1551 s      26137 s          0 s
       #2  2800 MHz      25471 s          0 s       1414 s      17432 s          0 s
       
  Memory: 7.790031433105469 GB (5759.62109375 MB free)
  Uptime: 445.0 sec
  Load Avg:  1.03076171875  0.91162109375  0.47021484375
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-9.0.1 (ORCJIT, cascadelake)
```

---
# Target result
# Benchmark Report for */home/travis/build/biaslab/ReactiveMP.jl*

## Job Properties
* Time of benchmark: 23 Mar 2021 - 17:21
* Package commit: 6b305a
* Julia commit: 69fcb5
* Julia command flags: `-O3`
* Environment variables: None

## Results
Below is a table of this job's results, obtained by running the benchmarks.
The values listed in the `ID` column have the structure `[parent_group, child_group, ..., key]`, and can be used to
index into the BaseBenchmarks suite to retrieve the corresponding benchmarks.
The percentages accompanying time and memory values in the below table are noise tolerances. The "true"
time/memory value for a given benchmark is expected to fall within this percentage of the reported value.
An empty cell means that the value was zero.

| ID                                      | time           | GC time | memory         | allocations |
|-----------------------------------------|---------------:|--------:|---------------:|------------:|
| `["models", "lgssm1", "creation_100"]`  |  2.399 ms (5%) |         |  1.37 MiB (1%) |       25961 |
| `["models", "lgssm1", "creation_500"]`  | 12.156 ms (5%) |         |  6.79 MiB (1%) |      129164 |
| `["models", "lgssm1", "inference_100"]` |  5.415 ms (5%) |         |  3.53 MiB (1%) |       59456 |
| `["models", "lgssm1", "inference_500"]` | 31.738 ms (5%) |         | 17.60 MiB (1%) |      296260 |
| `["models", "lgssm2", "creation_100"]`  |  3.021 ms (5%) |         |  2.02 MiB (1%) |       38099 |
| `["models", "lgssm2", "creation_500"]`  | 15.166 ms (5%) |         | 10.04 MiB (1%) |      189702 |
| `["models", "lgssm2", "inference_100"]` | 10.148 ms (5%) |         |  6.27 MiB (1%) |      102269 |
| `["models", "lgssm2", "inference_500"]` | 58.606 ms (5%) |         | 31.30 MiB (1%) |      510673 |

## Benchmark Group List
Here's a list of all the benchmark groups executed by this job:

- `["models", "lgssm1"]`
- `["models", "lgssm2"]`

## Julia versioninfo
```
Julia Version 1.5.4
Commit 69fcb5745b (2021-03-11 19:13 UTC)
Platform Info:
  OS: Linux (x86_64-pc-linux-gnu)
      Ubuntu 16.04.6 LTS
  uname: Linux 4.15.0-1028-gcp #29~16.04.1-Ubuntu SMP Tue Feb 12 16:31:10 UTC 2019 x86_64 x86_64
  CPU: Intel(R) Xeon(R) CPU: 
              speed         user         nice          sys         idle          irq
       #1  2800 MHz      15840 s          0 s       1533 s      18116 s          0 s
       #2  2800 MHz      17452 s          0 s       1351 s      17000 s          0 s
       
  Memory: 7.790031433105469 GB (5731.92578125 MB free)
  Uptime: 360.0 sec
  Load Avg:  1.13671875  0.876953125  0.41455078125
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-9.0.1 (ORCJIT, cascadelake)
```

---
# Baseline result
# Benchmark Report for */home/travis/build/biaslab/ReactiveMP.jl*

## Job Properties
* Time of benchmark: 23 Mar 2021 - 17:22
* Package commit: a6e456
* Julia commit: 69fcb5
* Julia command flags: `-O3`
* Environment variables: None

## Results
Below is a table of this job's results, obtained by running the benchmarks.
The values listed in the `ID` column have the structure `[parent_group, child_group, ..., key]`, and can be used to
index into the BaseBenchmarks suite to retrieve the corresponding benchmarks.
The percentages accompanying time and memory values in the below table are noise tolerances. The "true"
time/memory value for a given benchmark is expected to fall within this percentage of the reported value.
An empty cell means that the value was zero.

| ID                                      | time           | GC time    | memory          | allocations |
|-----------------------------------------|---------------:|-----------:|----------------:|------------:|
| `["models", "lgssm1", "creation_100"]`  |  2.457 ms (5%) |            |   1.37 MiB (1%) |       25961 |
| `["models", "lgssm1", "creation_500"]`  | 12.379 ms (5%) |            |   6.79 MiB (1%) |      129164 |
| `["models", "lgssm1", "inference_100"]` |  5.527 ms (5%) |            |   3.53 MiB (1%) |       59456 |
| `["models", "lgssm1", "inference_500"]` | 32.643 ms (5%) |            |  17.60 MiB (1%) |      296260 |
| `["models", "lgssm2", "creation_100"]`  |  3.035 ms (5%) |            |   2.02 MiB (1%) |       38099 |
| `["models", "lgssm2", "creation_500"]`  | 15.365 ms (5%) |            |  10.04 MiB (1%) |      189702 |
| `["models", "lgssm2", "inference_100"]` |  9.921 ms (5%) |            |   6.27 MiB (1%) |      102269 |
| `["models", "lgssm2", "inference_500"]` |   7.070 s (5%) | 280.793 ms | 676.40 MiB (1%) |    13191697 |

## Benchmark Group List
Here's a list of all the benchmark groups executed by this job:

- `["models", "lgssm1"]`
- `["models", "lgssm2"]`

## Julia versioninfo
```
Julia Version 1.5.4
Commit 69fcb5745b (2021-03-11 19:13 UTC)
Platform Info:
  OS: Linux (x86_64-pc-linux-gnu)
      Ubuntu 16.04.6 LTS
  uname: Linux 4.15.0-1028-gcp #29~16.04.1-Ubuntu SMP Tue Feb 12 16:31:10 UTC 2019 x86_64 x86_64
  CPU: Intel(R) Xeon(R) CPU: 
              speed         user         nice          sys         idle          irq
       #1  2800 MHz      16294 s          0 s       1551 s      26137 s          0 s
       #2  2800 MHz      25471 s          0 s       1414 s      17432 s          0 s
       
  Memory: 7.790031433105469 GB (5759.62109375 MB free)
  Uptime: 445.0 sec
  Load Avg:  1.03076171875  0.91162109375  0.47021484375
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-9.0.1 (ORCJIT, cascadelake)
```

---
# Runtime information
| Runtime Info | |
|:--|:--|
| BLAS #threads | 2 |
| `BLAS.vendor()` | `openblas64` |
| `Sys.CPU_THREADS` | 2 |

`lscpu` output:

    Architecture:          x86_64
    CPU op-mode(s):        32-bit, 64-bit
    Byte Order:            Little Endian
    CPU(s):                2
    On-line CPU(s) list:   0,1
    Thread(s) per core:    2
    Core(s) per socket:    1
    Socket(s):             1
    NUMA node(s):          1
    Vendor ID:             GenuineIntel
    CPU family:            6
    Model:                 85
    Model name:            Intel(R) Xeon(R) CPU
    Stepping:              7
    CPU MHz:               2800.272
    BogoMIPS:              5600.54
    Hypervisor vendor:     KVM
    Virtualization type:   full
    L1d cache:             32K
    L1i cache:             32K
    L2 cache:              1024K
    L3 cache:              33792K
    NUMA node0 CPU(s):     0,1
    Flags:                 fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ss ht syscall nx pdpe1gb rdtscp lm constant_tsc rep_good nopl xtopology nonstop_tsc cpuid pni pclmulqdq ssse3 fma cx16 pcid sse4_1 sse4_2 x2apic movbe popcnt aes xsave avx f16c rdrand hypervisor lahf_lm abm 3dnowprefetch invpcid_single ssbd ibrs ibpb stibp ibrs_enhanced fsgsbase tsc_adjust bmi1 hle avx2 smep bmi2 erms invpcid rtm mpx avx512f avx512dq rdseed adx smap clflushopt clwb avx512cd avx512bw avx512vl xsaveopt xsavec xgetbv1 xsaves arat avx512_vnni arch_capabilities
    

| Cpu Property       | Value                                                      |
|:------------------ |:---------------------------------------------------------- |
| Brand              | Intel(R) Xeon(R) CPU                                       |
| Vendor             | :Intel                                                     |
| Architecture       | :Skylake                                                   |
| Model              | Family: 0x06, Model: 0x55, Stepping: 0x07, Type: 0x00      |
| Cores              | 1 physical cores, 2 logical cores (on executing CPU)       |
|                    | Hyperthreading hardware capability detected                |
| Clock Frequencies  | Not supported by CPU                                       |
| Data Cache         | Level 1:3 : (32, 1024, 33792) kbytes                       |
|                    | 64 byte cache line size                                    |
| Address Size       | 48 bits virtual, 46 bits physical                          |
| SIMD               | 512 bit = 64 byte max. SIMD vector size                    |
| Time Stamp Counter | TSC is accessible via `rdtsc`                              |
|                    | TSC runs at constant rate (invariant from clock frequency) |
| Perf. Monitoring   | Performance Monitoring Counters (PMC) are not supported    |
| Hypervisor         | Yes, KVM                                                   |

