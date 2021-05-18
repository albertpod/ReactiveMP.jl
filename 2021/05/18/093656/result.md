# Benchmark result (via Travis)


# Judge result
# Benchmark Report for */home/travis/build/biaslab/ReactiveMP.jl/benchmark/../*

## Job Properties
* Time of benchmarks:
    - Target: 18 May 2021 - 09:32
    - Baseline: 18 May 2021 - 09:36
* Package commits:
    - Target: 9ebb4d
    - Baseline: 433fe5
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

| ID                                      | time ratio                   | memory ratio                 |
|-----------------------------------------|------------------------------|------------------------------|
| `["models", "hgf1", "creation"]`        |                   0.97 (5%)  | 0.96 (1%) :white_check_mark: |
| `["models", "hgf1", "inference_100"]`   |                   1.02 (5%)  |                1.08 (1%) :x: |
| `["models", "hgf1", "inference_1000"]`  |                   1.02 (5%)  |                1.08 (1%) :x: |
| `["models", "hgf1", "inference_500"]`   |                   1.02 (5%)  |                1.08 (1%) :x: |
| `["models", "hmm1", "inference_100"]`   |                   1.01 (5%)  |                1.06 (1%) :x: |
| `["models", "hmm1", "inference_500"]`   |                1.08 (5%) :x: |                1.06 (1%) :x: |
| `["models", "lgssm1", "inference_100"]` |                1.09 (5%) :x: |                1.02 (1%) :x: |
| `["models", "lgssm1", "inference_500"]` |                   0.97 (5%)  |                1.02 (1%) :x: |
| `["models", "lgssm2", "inference_100"]` |                   0.99 (5%)  |                1.02 (1%) :x: |
| `["models", "lgssm2", "inference_500"]` | 0.95 (5%) :white_check_mark: |                1.02 (1%) :x: |

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
       #1  2800 MHz        968 s          0 s        109 s       2737 s          0 s
       #2  2800 MHz       3102 s          0 s        119 s        612 s          0 s
       
  Memory: 7.790031433105469 GB (5761.21484375 MB free)
  Uptime: 384.0 sec
  Load Avg:  1.02  0.9  0.45
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
       #1  2800 MHz       3091 s          0 s        160 s       2910 s          0 s
       #2  2800 MHz       3662 s          0 s        165 s       2348 s          0 s
       
  Memory: 7.790031433105469 GB (5707.94140625 MB free)
  Uptime: 619.0 sec
  Load Avg:  1.05  1.1  0.66
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-11.0.1 (ORCJIT, cascadelake)
```

---
# Target result
# Benchmark Report for */home/travis/build/biaslab/ReactiveMP.jl/benchmark/../*

## Job Properties
* Time of benchmark: 18 May 2021 - 9:32
* Package commit: 9ebb4d
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
| `["models", "hgf1", "creation"]`        |  38.600 μs (5%) |           |  36.27 KiB (1%) |         615 |
| `["models", "hgf1", "inference_100"]`   |  34.624 ms (5%) |           |  20.30 MiB (1%) |      332427 |
| `["models", "hgf1", "inference_1000"]`  | 386.343 ms (5%) | 39.104 ms | 201.98 MiB (1%) |     3307837 |
| `["models", "hgf1", "inference_500"]`   | 193.676 ms (5%) | 19.905 ms | 101.05 MiB (1%) |     1654834 |
| `["models", "hmm1", "creation_100"]`    |   1.875 ms (5%) |           |   1.41 MiB (1%) |       27915 |
| `["models", "hmm1", "creation_500"]`    |   9.634 ms (5%) |           |   6.97 MiB (1%) |      138321 |
| `["models", "hmm1", "inference_100"]`   |  56.849 ms (5%) |           |  36.20 MiB (1%) |      461205 |
| `["models", "hmm1", "inference_500"]`   | 500.109 ms (5%) | 87.096 ms | 180.34 MiB (1%) |     2298106 |
| `["models", "lgssm1", "creation_100"]`  |   1.294 ms (5%) |           | 970.33 KiB (1%) |       18420 |
| `["models", "lgssm1", "creation_500"]`  |   6.480 ms (5%) |           |   4.71 MiB (1%) |       91622 |
| `["models", "lgssm1", "inference_100"]` |   3.225 ms (5%) |           |   2.87 MiB (1%) |       44087 |
| `["models", "lgssm1", "inference_500"]` |  17.765 ms (5%) |           |  14.33 MiB (1%) |      220089 |
| `["models", "lgssm2", "creation_100"]`  |   1.908 ms (5%) |           |   1.40 MiB (1%) |       26669 |
| `["models", "lgssm2", "creation_500"]`  |   9.491 ms (5%) |           |   6.96 MiB (1%) |      132671 |
| `["models", "lgssm2", "inference_100"]` |   7.104 ms (5%) |           |   5.40 MiB (1%) |       79238 |
| `["models", "lgssm2", "inference_500"]` |  38.577 ms (5%) |           |  27.02 MiB (1%) |      396440 |

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
       #1  2800 MHz        968 s          0 s        109 s       2737 s          0 s
       #2  2800 MHz       3102 s          0 s        119 s        612 s          0 s
       
  Memory: 7.790031433105469 GB (5761.21484375 MB free)
  Uptime: 384.0 sec
  Load Avg:  1.02  0.9  0.45
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-11.0.1 (ORCJIT, cascadelake)
```

---
# Baseline result
# Benchmark Report for */home/travis/build/biaslab/ReactiveMP.jl/benchmark/../*

## Job Properties
* Time of benchmark: 18 May 2021 - 9:36
* Package commit: 433fe5
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
| `["models", "hgf1", "creation"]`        |  39.977 μs (5%) |           |  37.61 KiB (1%) |         650 |
| `["models", "hgf1", "inference_100"]`   |  34.049 ms (5%) |           |  18.76 MiB (1%) |      312458 |
| `["models", "hgf1", "inference_1000"]`  | 378.927 ms (5%) | 37.826 ms | 186.57 MiB (1%) |     3107868 |
| `["models", "hgf1", "inference_500"]`   | 188.980 ms (5%) | 19.070 ms |  93.35 MiB (1%) |     1554865 |
| `["models", "hmm1", "creation_100"]`    |   1.848 ms (5%) |           |   1.41 MiB (1%) |       28928 |
| `["models", "hmm1", "creation_500"]`    |   9.542 ms (5%) |           |   6.97 MiB (1%) |      143334 |
| `["models", "hmm1", "inference_100"]`   |  56.348 ms (5%) |           |  34.20 MiB (1%) |      445310 |
| `["models", "hmm1", "inference_500"]`   | 462.763 ms (5%) | 85.307 ms | 170.44 MiB (1%) |     2219009 |
| `["models", "lgssm1", "creation_100"]`  |   1.290 ms (5%) |           | 970.33 KiB (1%) |       19124 |
| `["models", "lgssm1", "creation_500"]`  |   6.435 ms (5%) |           |   4.71 MiB (1%) |       95126 |
| `["models", "lgssm1", "inference_100"]` |   2.969 ms (5%) |           |   2.80 MiB (1%) |       43890 |
| `["models", "lgssm1", "inference_500"]` |  18.406 ms (5%) |           |  13.99 MiB (1%) |      219092 |
| `["models", "lgssm2", "creation_100"]`  |   1.901 ms (5%) |           |   1.40 MiB (1%) |       27673 |
| `["models", "lgssm2", "creation_500"]`  |   9.793 ms (5%) |           |   6.96 MiB (1%) |      137675 |
| `["models", "lgssm2", "inference_100"]` |   7.196 ms (5%) |           |   5.30 MiB (1%) |       78942 |
| `["models", "lgssm2", "inference_500"]` |  40.644 ms (5%) |           |  26.55 MiB (1%) |      394944 |

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
       #1  2800 MHz       3091 s          0 s        160 s       2910 s          0 s
       #2  2800 MHz       3662 s          0 s        165 s       2348 s          0 s
       
  Memory: 7.790031433105469 GB (5707.94140625 MB free)
  Uptime: 619.0 sec
  Load Avg:  1.05  1.1  0.66
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
    CPU MHz:               2800.270
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

