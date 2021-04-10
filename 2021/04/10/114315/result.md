# Benchmark result (via Travis)


# Judge result
# Benchmark Report for */home/travis/build/biaslab/ReactiveMP.jl/benchmark/../*

## Job Properties
* Time of benchmarks:
    - Target: 10 Apr 2021 - 11:39
    - Baseline: 10 Apr 2021 - 11:42
* Package commits:
    - Target: f281cb
    - Baseline: b43703
* Julia commits:
    - Target: f9720d
    - Baseline: f9720d
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

| ID                                      | time ratio | memory ratio |
|-----------------------------------------|------------|--------------|

## Benchmark Group List
Here's a list of all the benchmark groups executed by this job:

- `["models", "hgf1"]`
- `["models", "hmm1"]`
- `["models", "lgssm1"]`
- `["models", "lgssm2"]`

## Julia versioninfo

### Target
```
Julia Version 1.6.0
Commit f9720dc2eb (2021-03-24 12:55 UTC)
Platform Info:
  OS: Linux (x86_64-pc-linux-gnu)
      Ubuntu 16.04.6 LTS
  uname: Linux 4.15.0-1028-gcp #29~16.04.1-Ubuntu SMP Tue Feb 12 16:31:10 UTC 2019 x86_64 x86_64
  CPU: Intel(R) Xeon(R) CPU: 
              speed         user         nice          sys         idle          irq
       #1  2800 MHz        858 s          0 s        125 s       2973 s          0 s
       #2  2800 MHz       3349 s          0 s        109 s        520 s          0 s
       
  Memory: 7.790031433105469 GB (5823.73046875 MB free)
  Uptime: 399.0 sec
  Load Avg:  1.03  0.95  0.49
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-11.0.1 (ORCJIT, cascadelake)
```

### Baseline
```
Julia Version 1.6.0
Commit f9720dc2eb (2021-03-24 12:55 UTC)
Platform Info:
  OS: Linux (x86_64-pc-linux-gnu)
      Ubuntu 16.04.6 LTS
  uname: Linux 4.15.0-1028-gcp #29~16.04.1-Ubuntu SMP Tue Feb 12 16:31:10 UTC 2019 x86_64 x86_64
  CPU: Intel(R) Xeon(R) CPU: 
              speed         user         nice          sys         idle          irq
       #1  2800 MHz       2555 s          0 s        138 s       3133 s          0 s
       #2  2800 MHz       3514 s          0 s        116 s       2214 s          0 s
       
  Memory: 7.790031433105469 GB (5814.98046875 MB free)
  Uptime: 586.0 sec
  Load Avg:  1.0  0.98  0.59
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-11.0.1 (ORCJIT, cascadelake)
```

---
# Target result
# Benchmark Report for */home/travis/build/biaslab/ReactiveMP.jl/benchmark/../*

## Job Properties
* Time of benchmark: 10 Apr 2021 - 11:39
* Package commit: f281cb
* Julia commit: f9720d
* Julia command flags: `-O3`
* Environment variables: None

## Results
Below is a table of this job's results, obtained by running the benchmarks.
The values listed in the `ID` column have the structure `[parent_group, child_group, ..., key]`, and can be used to
index into the BaseBenchmarks suite to retrieve the corresponding benchmarks.
The percentages accompanying time and memory values in the below table are noise tolerances. The "true"
time/memory value for a given benchmark is expected to fall within this percentage of the reported value.
An empty cell means that the value was zero.

| ID                                      | time            | GC time    | memory          | allocations |
|-----------------------------------------|----------------:|-----------:|----------------:|------------:|
| `["models", "hgf1", "creation"]`        |  38.506 μs (5%) |            |  36.27 KiB (1%) |         643 |
| `["models", "hgf1", "inference_100"]`   |  34.104 ms (5%) |            |  18.67 MiB (1%) |      318440 |
| `["models", "hgf1", "inference_1000"]`  | 382.366 ms (5%) |  40.284 ms | 185.65 MiB (1%) |     3167850 |
| `["models", "hgf1", "inference_500"]`   | 191.466 ms (5%) |  20.836 ms |  92.89 MiB (1%) |     1584847 |
| `["models", "hmm1", "creation_100"]`    |   1.907 ms (5%) |            |   1.41 MiB (1%) |       28928 |
| `["models", "hmm1", "creation_500"]`    |   9.729 ms (5%) |            |   6.97 MiB (1%) |      143334 |
| `["models", "hmm1", "inference_100"]`   |  56.706 ms (5%) |            |  34.20 MiB (1%) |      445403 |
| `["models", "hmm1", "inference_500"]`   | 531.443 ms (5%) | 101.925 ms | 170.45 MiB (1%) |     2219502 |
| `["models", "lgssm1", "creation_100"]`  |   1.285 ms (5%) |            | 970.33 KiB (1%) |       19124 |
| `["models", "lgssm1", "creation_500"]`  |   6.550 ms (5%) |            |   4.71 MiB (1%) |       95126 |
| `["models", "lgssm1", "inference_100"]` |   3.091 ms (5%) |            |   2.80 MiB (1%) |       43889 |
| `["models", "lgssm1", "inference_500"]` |  18.530 ms (5%) |            |  13.99 MiB (1%) |      219091 |
| `["models", "lgssm2", "creation_100"]`  |   1.951 ms (5%) |            |   1.40 MiB (1%) |       27673 |
| `["models", "lgssm2", "creation_500"]`  |  10.184 ms (5%) |            |   6.96 MiB (1%) |      137675 |
| `["models", "lgssm2", "inference_100"]` |   7.242 ms (5%) |            |   5.30 MiB (1%) |       78941 |
| `["models", "lgssm2", "inference_500"]` |  42.890 ms (5%) |            |  26.55 MiB (1%) |      394943 |

## Benchmark Group List
Here's a list of all the benchmark groups executed by this job:

- `["models", "hgf1"]`
- `["models", "hmm1"]`
- `["models", "lgssm1"]`
- `["models", "lgssm2"]`

## Julia versioninfo
```
Julia Version 1.6.0
Commit f9720dc2eb (2021-03-24 12:55 UTC)
Platform Info:
  OS: Linux (x86_64-pc-linux-gnu)
      Ubuntu 16.04.6 LTS
  uname: Linux 4.15.0-1028-gcp #29~16.04.1-Ubuntu SMP Tue Feb 12 16:31:10 UTC 2019 x86_64 x86_64
  CPU: Intel(R) Xeon(R) CPU: 
              speed         user         nice          sys         idle          irq
       #1  2800 MHz        858 s          0 s        125 s       2973 s          0 s
       #2  2800 MHz       3349 s          0 s        109 s        520 s          0 s
       
  Memory: 7.790031433105469 GB (5823.73046875 MB free)
  Uptime: 399.0 sec
  Load Avg:  1.03  0.95  0.49
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-11.0.1 (ORCJIT, cascadelake)
```

---
# Baseline result
# Benchmark Report for */home/travis/build/biaslab/ReactiveMP.jl/benchmark/../*

## Job Properties
* Time of benchmark: 10 Apr 2021 - 11:42
* Package commit: b43703
* Julia commit: f9720d
* Julia command flags: `-O3`
* Environment variables: None

## Results
Below is a table of this job's results, obtained by running the benchmarks.
The values listed in the `ID` column have the structure `[parent_group, child_group, ..., key]`, and can be used to
index into the BaseBenchmarks suite to retrieve the corresponding benchmarks.
The percentages accompanying time and memory values in the below table are noise tolerances. The "true"
time/memory value for a given benchmark is expected to fall within this percentage of the reported value.
An empty cell means that the value was zero.

| ID                                      | time            | GC time   | memory          | allocations |
|-----------------------------------------|----------------:|----------:|----------------:|------------:|
| `["models", "hgf1", "creation"]`        |  38.200 μs (5%) |           |  36.27 KiB (1%) |         643 |
| `["models", "hgf1", "inference_100"]`   |  34.561 ms (5%) |           |  18.67 MiB (1%) |      318440 |
| `["models", "hgf1", "inference_1000"]`  | 382.686 ms (5%) | 39.225 ms | 185.65 MiB (1%) |     3167850 |
| `["models", "hgf1", "inference_500"]`   | 190.199 ms (5%) | 19.151 ms |  92.89 MiB (1%) |     1584847 |
| `["models", "hmm1", "creation_100"]`    |   1.891 ms (5%) |           |   1.41 MiB (1%) |       28928 |
| `["models", "hmm1", "creation_500"]`    |   9.489 ms (5%) |           |   6.97 MiB (1%) |      143334 |
| `["models", "hmm1", "inference_100"]`   |  55.121 ms (5%) |           |  34.20 MiB (1%) |      445403 |
| `["models", "hmm1", "inference_500"]`   | 509.639 ms (5%) | 95.283 ms | 170.45 MiB (1%) |     2219502 |
| `["models", "lgssm1", "creation_100"]`  |   1.292 ms (5%) |           | 970.33 KiB (1%) |       19124 |
| `["models", "lgssm1", "creation_500"]`  |   6.653 ms (5%) |           |   4.71 MiB (1%) |       95126 |
| `["models", "lgssm1", "inference_100"]` |   3.138 ms (5%) |           |   2.80 MiB (1%) |       43889 |
| `["models", "lgssm1", "inference_500"]` |  18.717 ms (5%) |           |  13.99 MiB (1%) |      219091 |
| `["models", "lgssm2", "creation_100"]`  |   1.907 ms (5%) |           |   1.40 MiB (1%) |       27673 |
| `["models", "lgssm2", "creation_500"]`  |   9.934 ms (5%) |           |   6.96 MiB (1%) |      137675 |
| `["models", "lgssm2", "inference_100"]` |   7.054 ms (5%) |           |   5.30 MiB (1%) |       78941 |
| `["models", "lgssm2", "inference_500"]` |  41.748 ms (5%) |           |  26.55 MiB (1%) |      394943 |

## Benchmark Group List
Here's a list of all the benchmark groups executed by this job:

- `["models", "hgf1"]`
- `["models", "hmm1"]`
- `["models", "lgssm1"]`
- `["models", "lgssm2"]`

## Julia versioninfo
```
Julia Version 1.6.0
Commit f9720dc2eb (2021-03-24 12:55 UTC)
Platform Info:
  OS: Linux (x86_64-pc-linux-gnu)
      Ubuntu 16.04.6 LTS
  uname: Linux 4.15.0-1028-gcp #29~16.04.1-Ubuntu SMP Tue Feb 12 16:31:10 UTC 2019 x86_64 x86_64
  CPU: Intel(R) Xeon(R) CPU: 
              speed         user         nice          sys         idle          irq
       #1  2800 MHz       2555 s          0 s        138 s       3133 s          0 s
       #2  2800 MHz       3514 s          0 s        116 s       2214 s          0 s
       
  Memory: 7.790031433105469 GB (5814.98046875 MB free)
  Uptime: 586.0 sec
  Load Avg:  1.0  0.98  0.59
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-11.0.1 (ORCJIT, cascadelake)
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
    CPU MHz:               2800.168
    BogoMIPS:              5600.33
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

