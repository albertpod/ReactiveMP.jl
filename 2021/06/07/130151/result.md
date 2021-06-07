# Benchmark result (via Travis)


# Judge result
# Benchmark Report for */home/travis/build/biaslab/ReactiveMP.jl/benchmark/../*

## Job Properties
* Time of benchmarks:
    - Target: 7 Jun 2021 - 12:58
    - Baseline: 7 Jun 2021 - 13:01
* Package commits:
    - Target: 9cf368
    - Baseline: 9cf368
* Julia commits:
    - Target: 6aaede
    - Baseline: 6aaede
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
Julia Version 1.6.1
Commit 6aaedecc44 (2021-04-23 05:59 UTC)
Platform Info:
  OS: Linux (x86_64-pc-linux-gnu)
      Ubuntu 16.04.6 LTS
  uname: Linux 4.15.0-1028-gcp #29~16.04.1-Ubuntu SMP Tue Feb 12 16:31:10 UTC 2019 x86_64 x86_64
  CPU: Intel(R) Xeon(R) CPU: 
              speed         user         nice          sys         idle          irq
       #1  2800 MHz       3275 s          0 s        119 s        355 s          0 s
       #2  2800 MHz        718 s          0 s        103 s       2950 s          0 s
       
  Memory: 7.7900238037109375 GB (5773.234375 MB free)
  Uptime: 378.0 sec
  Load Avg:  1.01  0.85  0.43
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-11.0.1 (ORCJIT, cascadelake)
```

### Baseline
```
Julia Version 1.6.1
Commit 6aaedecc44 (2021-04-23 05:59 UTC)
Platform Info:
  OS: Linux (x86_64-pc-linux-gnu)
      Ubuntu 16.04.6 LTS
  uname: Linux 4.15.0-1028-gcp #29~16.04.1-Ubuntu SMP Tue Feb 12 16:31:10 UTC 2019 x86_64 x86_64
  CPU: Intel(R) Xeon(R) CPU: 
              speed         user         nice          sys         idle          irq
       #1  2800 MHz       4853 s          0 s        128 s        383 s          0 s
       #2  2800 MHz        750 s          0 s        106 s       4527 s          0 s
       
  Memory: 7.7900238037109375 GB (5747.8203125 MB free)
  Uptime: 540.0 sec
  Load Avg:  1.0  0.92  0.52
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-11.0.1 (ORCJIT, cascadelake)
```

---
# Target result
# Benchmark Report for */home/travis/build/biaslab/ReactiveMP.jl/benchmark/../*

## Job Properties
* Time of benchmark: 7 Jun 2021 - 12:58
* Package commit: 9cf368
* Julia commit: 6aaede
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
| `["models", "hgf1", "creation"]`        |  37.772 μs (5%) |           |  37.95 KiB (1%) |         658 |
| `["models", "hgf1", "inference_100"]`   |  29.564 ms (5%) |           |  18.81 MiB (1%) |      308458 |
| `["models", "hgf1", "inference_1000"]`  | 330.007 ms (5%) | 33.905 ms | 187.02 MiB (1%) |     3067868 |
| `["models", "hgf1", "inference_500"]`   | 164.255 ms (5%) | 17.310 ms |  93.58 MiB (1%) |     1534865 |
| `["models", "hmm1", "creation_100"]`    |   1.855 ms (5%) |           |   1.41 MiB (1%) |       29131 |
| `["models", "hmm1", "creation_500"]`    |   8.992 ms (5%) |           |   6.96 MiB (1%) |      144337 |
| `["models", "hmm1", "inference_100"]`   |  52.305 ms (5%) |           |  34.19 MiB (1%) |      445309 |
| `["models", "hmm1", "inference_500"]`   | 370.818 ms (5%) | 75.406 ms | 170.40 MiB (1%) |     2219008 |
| `["models", "lgssm1", "creation_100"]`  |   1.218 ms (5%) |           | 951.64 KiB (1%) |       18825 |
| `["models", "lgssm1", "creation_500"]`  |   6.038 ms (5%) |           |   4.62 MiB (1%) |       93627 |
| `["models", "lgssm1", "inference_100"]` |   3.071 ms (5%) |           |   2.82 MiB (1%) |       44383 |
| `["models", "lgssm1", "inference_500"]` |  16.626 ms (5%) |           |  14.06 MiB (1%) |      221585 |
| `["models", "lgssm2", "creation_100"]`  |   1.749 ms (5%) |           |   1.37 MiB (1%) |       27174 |
| `["models", "lgssm2", "creation_500"]`  |   8.775 ms (5%) |           |   6.81 MiB (1%) |      135176 |
| `["models", "lgssm2", "inference_100"]` |   6.231 ms (5%) |           |   5.13 MiB (1%) |       76166 |
| `["models", "lgssm2", "inference_500"]` |  34.011 ms (5%) |           |  25.67 MiB (1%) |      380968 |

## Benchmark Group List
Here's a list of all the benchmark groups executed by this job:

- `["models", "hgf1"]`
- `["models", "hmm1"]`
- `["models", "lgssm1"]`
- `["models", "lgssm2"]`

## Julia versioninfo
```
Julia Version 1.6.1
Commit 6aaedecc44 (2021-04-23 05:59 UTC)
Platform Info:
  OS: Linux (x86_64-pc-linux-gnu)
      Ubuntu 16.04.6 LTS
  uname: Linux 4.15.0-1028-gcp #29~16.04.1-Ubuntu SMP Tue Feb 12 16:31:10 UTC 2019 x86_64 x86_64
  CPU: Intel(R) Xeon(R) CPU: 
              speed         user         nice          sys         idle          irq
       #1  2800 MHz       3275 s          0 s        119 s        355 s          0 s
       #2  2800 MHz        718 s          0 s        103 s       2950 s          0 s
       
  Memory: 7.7900238037109375 GB (5773.234375 MB free)
  Uptime: 378.0 sec
  Load Avg:  1.01  0.85  0.43
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-11.0.1 (ORCJIT, cascadelake)
```

---
# Baseline result
# Benchmark Report for */home/travis/build/biaslab/ReactiveMP.jl/benchmark/../*

## Job Properties
* Time of benchmark: 7 Jun 2021 - 13:1
* Package commit: 9cf368
* Julia commit: 6aaede
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
| `["models", "hgf1", "creation"]`        |  37.577 μs (5%) |           |  37.95 KiB (1%) |         658 |
| `["models", "hgf1", "inference_100"]`   |  30.136 ms (5%) |           |  18.81 MiB (1%) |      308458 |
| `["models", "hgf1", "inference_1000"]`  | 332.514 ms (5%) | 32.778 ms | 187.02 MiB (1%) |     3067868 |
| `["models", "hgf1", "inference_500"]`   | 167.233 ms (5%) | 16.891 ms |  93.58 MiB (1%) |     1534865 |
| `["models", "hmm1", "creation_100"]`    |   1.851 ms (5%) |           |   1.41 MiB (1%) |       29131 |
| `["models", "hmm1", "creation_500"]`    |   8.995 ms (5%) |           |   6.96 MiB (1%) |      144337 |
| `["models", "hmm1", "inference_100"]`   |  52.263 ms (5%) |           |  34.19 MiB (1%) |      445309 |
| `["models", "hmm1", "inference_500"]`   | 375.706 ms (5%) | 75.556 ms | 170.40 MiB (1%) |     2219008 |
| `["models", "lgssm1", "creation_100"]`  |   1.211 ms (5%) |           | 951.64 KiB (1%) |       18825 |
| `["models", "lgssm1", "creation_500"]`  |   6.052 ms (5%) |           |   4.62 MiB (1%) |       93627 |
| `["models", "lgssm1", "inference_100"]` |   3.083 ms (5%) |           |   2.82 MiB (1%) |       44383 |
| `["models", "lgssm1", "inference_500"]` |  16.583 ms (5%) |           |  14.06 MiB (1%) |      221585 |
| `["models", "lgssm2", "creation_100"]`  |   1.760 ms (5%) |           |   1.37 MiB (1%) |       27174 |
| `["models", "lgssm2", "creation_500"]`  |   8.760 ms (5%) |           |   6.81 MiB (1%) |      135176 |
| `["models", "lgssm2", "inference_100"]` |   6.275 ms (5%) |           |   5.13 MiB (1%) |       76166 |
| `["models", "lgssm2", "inference_500"]` |  33.524 ms (5%) |           |  25.67 MiB (1%) |      380968 |

## Benchmark Group List
Here's a list of all the benchmark groups executed by this job:

- `["models", "hgf1"]`
- `["models", "hmm1"]`
- `["models", "lgssm1"]`
- `["models", "lgssm2"]`

## Julia versioninfo
```
Julia Version 1.6.1
Commit 6aaedecc44 (2021-04-23 05:59 UTC)
Platform Info:
  OS: Linux (x86_64-pc-linux-gnu)
      Ubuntu 16.04.6 LTS
  uname: Linux 4.15.0-1028-gcp #29~16.04.1-Ubuntu SMP Tue Feb 12 16:31:10 UTC 2019 x86_64 x86_64
  CPU: Intel(R) Xeon(R) CPU: 
              speed         user         nice          sys         idle          irq
       #1  2800 MHz       4853 s          0 s        128 s        383 s          0 s
       #2  2800 MHz        750 s          0 s        106 s       4527 s          0 s
       
  Memory: 7.7900238037109375 GB (5747.8203125 MB free)
  Uptime: 540.0 sec
  Load Avg:  1.0  0.92  0.52
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
    CPU MHz:               2800.234
    BogoMIPS:              5600.46
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

