# Benchmark result (via Travis)


# Judge result
# Benchmark Report for */home/travis/build/biaslab/ReactiveMP.jl/benchmark/../*

## Job Properties
* Time of benchmarks:
    - Target: 8 May 2021 - 15:07
    - Baseline: 8 May 2021 - 15:10
* Package commits:
    - Target: f7e2bd
    - Baseline: df8f02
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
       #1  2800 MHz       1395 s          0 s        122 s       2312 s          0 s
       #2  2800 MHz       2689 s          0 s        101 s       1056 s          0 s
       
  Memory: 7.790031433105469 GB (5816.54296875 MB free)
  Uptime: 386.0 sec
  Load Avg:  1.01  0.91  0.47
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
       #1  2800 MHz       2882 s          0 s        130 s       2607 s          0 s
       #2  2800 MHz       2984 s          0 s        112 s       2538 s          0 s
       
  Memory: 7.790031433105469 GB (5812.70703125 MB free)
  Uptime: 565.0 sec
  Load Avg:  1.0  0.96  0.57
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-11.0.1 (ORCJIT, cascadelake)
```

---
# Target result
# Benchmark Report for */home/travis/build/biaslab/ReactiveMP.jl/benchmark/../*

## Job Properties
* Time of benchmark: 8 May 2021 - 15:7
* Package commit: f7e2bd
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
| `["models", "hgf1", "creation"]`        |  40.479 μs (5%) |           |  37.61 KiB (1%) |         650 |
| `["models", "hgf1", "inference_100"]`   |  33.240 ms (5%) |           |  18.76 MiB (1%) |      312458 |
| `["models", "hgf1", "inference_1000"]`  | 369.994 ms (5%) | 37.656 ms | 186.57 MiB (1%) |     3107868 |
| `["models", "hgf1", "inference_500"]`   | 185.062 ms (5%) | 18.921 ms |  93.35 MiB (1%) |     1554865 |
| `["models", "hmm1", "creation_100"]`    |   1.864 ms (5%) |           |   1.41 MiB (1%) |       28928 |
| `["models", "hmm1", "creation_500"]`    |   8.995 ms (5%) |           |   6.97 MiB (1%) |      143334 |
| `["models", "hmm1", "inference_100"]`   |  52.904 ms (5%) |           |  34.20 MiB (1%) |      445310 |
| `["models", "hmm1", "inference_500"]`   | 414.730 ms (5%) | 92.899 ms | 170.44 MiB (1%) |     2219009 |
| `["models", "lgssm1", "creation_100"]`  |   1.302 ms (5%) |           | 970.33 KiB (1%) |       19124 |
| `["models", "lgssm1", "creation_500"]`  |   6.443 ms (5%) |           |   4.71 MiB (1%) |       95126 |
| `["models", "lgssm1", "inference_100"]` |   3.083 ms (5%) |           |   2.80 MiB (1%) |       43890 |
| `["models", "lgssm1", "inference_500"]` |  17.236 ms (5%) |           |  13.99 MiB (1%) |      219092 |
| `["models", "lgssm2", "creation_100"]`  |   1.890 ms (5%) |           |   1.40 MiB (1%) |       27673 |
| `["models", "lgssm2", "creation_500"]`  |   9.397 ms (5%) |           |   6.96 MiB (1%) |      137675 |
| `["models", "lgssm2", "inference_100"]` |   7.061 ms (5%) |           |   5.30 MiB (1%) |       78942 |
| `["models", "lgssm2", "inference_500"]` |  38.683 ms (5%) |           |  26.55 MiB (1%) |      394944 |

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
       #1  2800 MHz       1395 s          0 s        122 s       2312 s          0 s
       #2  2800 MHz       2689 s          0 s        101 s       1056 s          0 s
       
  Memory: 7.790031433105469 GB (5816.54296875 MB free)
  Uptime: 386.0 sec
  Load Avg:  1.01  0.91  0.47
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-11.0.1 (ORCJIT, cascadelake)
```

---
# Baseline result
# Benchmark Report for */home/travis/build/biaslab/ReactiveMP.jl/benchmark/../*

## Job Properties
* Time of benchmark: 8 May 2021 - 15:10
* Package commit: df8f02
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
| `["models", "hgf1", "creation"]`        |  39.717 μs (5%) |           |  37.61 KiB (1%) |         650 |
| `["models", "hgf1", "inference_100"]`   |  32.514 ms (5%) |           |  18.76 MiB (1%) |      312458 |
| `["models", "hgf1", "inference_1000"]`  | 355.556 ms (5%) | 35.956 ms | 186.57 MiB (1%) |     3107868 |
| `["models", "hgf1", "inference_500"]`   | 180.172 ms (5%) | 18.199 ms |  93.35 MiB (1%) |     1554865 |
| `["models", "hmm1", "creation_100"]`    |   1.850 ms (5%) |           |   1.41 MiB (1%) |       28928 |
| `["models", "hmm1", "creation_500"]`    |   9.166 ms (5%) |           |   6.97 MiB (1%) |      143334 |
| `["models", "hmm1", "inference_100"]`   |  53.762 ms (5%) |           |  34.20 MiB (1%) |      445310 |
| `["models", "hmm1", "inference_500"]`   | 396.938 ms (5%) | 80.835 ms | 170.44 MiB (1%) |     2219009 |
| `["models", "lgssm1", "creation_100"]`  |   1.278 ms (5%) |           | 970.33 KiB (1%) |       19124 |
| `["models", "lgssm1", "creation_500"]`  |   6.486 ms (5%) |           |   4.71 MiB (1%) |       95126 |
| `["models", "lgssm1", "inference_100"]` |   3.102 ms (5%) |           |   2.80 MiB (1%) |       43890 |
| `["models", "lgssm1", "inference_500"]` |  17.249 ms (5%) |           |  13.99 MiB (1%) |      219092 |
| `["models", "lgssm2", "creation_100"]`  |   1.956 ms (5%) |           |   1.40 MiB (1%) |       27673 |
| `["models", "lgssm2", "creation_500"]`  |   9.803 ms (5%) |           |   6.96 MiB (1%) |      137675 |
| `["models", "lgssm2", "inference_100"]` |   7.162 ms (5%) |           |   5.30 MiB (1%) |       78942 |
| `["models", "lgssm2", "inference_500"]` |  39.849 ms (5%) |           |  26.55 MiB (1%) |      394944 |

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
       #1  2800 MHz       2882 s          0 s        130 s       2607 s          0 s
       #2  2800 MHz       2984 s          0 s        112 s       2538 s          0 s
       
  Memory: 7.790031433105469 GB (5812.70703125 MB free)
  Uptime: 565.0 sec
  Load Avg:  1.0  0.96  0.57
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
    CPU MHz:               2800.188
    BogoMIPS:              5600.37
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

