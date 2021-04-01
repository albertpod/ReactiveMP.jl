# Benchmark result (via Travis)


# Judge result
# Benchmark Report for */home/travis/build/biaslab/ReactiveMP.jl/benchmark/../*

## Job Properties
* Time of benchmarks:
    - Target: 1 Apr 2021 - 10:59
    - Baseline: 1 Apr 2021 - 11:02
* Package commits:
    - Target: 8b375a
    - Baseline: c25493
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

| ID                                      | time ratio                   | memory ratio                 |
|-----------------------------------------|------------------------------|------------------------------|
| `["models", "hgf1", "creation"]`        |                   1.03 (5%)  | 0.99 (1%) :white_check_mark: |
| `["models", "hgf1", "inference_100"]`   | 0.92 (5%) :white_check_mark: | 0.95 (1%) :white_check_mark: |
| `["models", "hgf1", "inference_1000"]`  | 0.92 (5%) :white_check_mark: | 0.95 (1%) :white_check_mark: |
| `["models", "hgf1", "inference_500"]`   | 0.94 (5%) :white_check_mark: | 0.95 (1%) :white_check_mark: |
| `["models", "hmm1", "inference_100"]`   | 0.89 (5%) :white_check_mark: | 0.97 (1%) :white_check_mark: |
| `["models", "hmm1", "inference_500"]`   | 0.90 (5%) :white_check_mark: | 0.97 (1%) :white_check_mark: |
| `["models", "lgssm1", "creation_100"]`  | 0.93 (5%) :white_check_mark: |                   1.00 (1%)  |
| `["models", "lgssm1", "creation_500"]`  | 0.93 (5%) :white_check_mark: |                   1.00 (1%)  |
| `["models", "lgssm1", "inference_100"]` |                   0.96 (5%)  | 0.98 (1%) :white_check_mark: |
| `["models", "lgssm1", "inference_500"]` | 0.93 (5%) :white_check_mark: | 0.98 (1%) :white_check_mark: |
| `["models", "lgssm2", "creation_100"]`  | 0.94 (5%) :white_check_mark: |                   0.99 (1%)  |
| `["models", "lgssm2", "creation_500"]`  | 0.94 (5%) :white_check_mark: |                   0.99 (1%)  |
| `["models", "lgssm2", "inference_100"]` | 0.92 (5%) :white_check_mark: | 0.97 (1%) :white_check_mark: |
| `["models", "lgssm2", "inference_500"]` | 0.93 (5%) :white_check_mark: | 0.97 (1%) :white_check_mark: |

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
       #1  2800 MHz        685 s          0 s        117 s       3052 s          0 s
       #2  2800 MHz       3421 s          0 s        114 s        345 s          0 s
       
  Memory: 7.790031433105469 GB (5831.609375 MB free)
  Uptime: 389.0 sec
  Load Avg:  1.01  0.87  0.45
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
       #1  2800 MHz        894 s          0 s        128 s       4648 s          0 s
       #2  2800 MHz       5024 s          0 s        122 s        553 s          0 s
       
  Memory: 7.790031433105469 GB (5813.7109375 MB free)
  Uptime: 571.0 sec
  Load Avg:  1.04  0.96  0.56
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-11.0.1 (ORCJIT, cascadelake)
```

---
# Target result
# Benchmark Report for */home/travis/build/biaslab/ReactiveMP.jl/benchmark/../*

## Job Properties
* Time of benchmark: 1 Apr 2021 - 10:59
* Package commit: 8b375a
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
| `["models", "hgf1", "creation"]`        |  39.903 μs (5%) |           |  36.27 KiB (1%) |         615 |
| `["models", "hgf1", "inference_100"]`   |  36.746 ms (5%) |           |  20.68 MiB (1%) |      339427 |
| `["models", "hgf1", "inference_1000"]`  | 410.925 ms (5%) | 40.746 ms | 205.79 MiB (1%) |     3377837 |
| `["models", "hgf1", "inference_500"]`   | 206.344 ms (5%) | 20.548 ms | 102.96 MiB (1%) |     1689834 |
| `["models", "hmm1", "creation_100"]`    |   1.890 ms (5%) |           |   1.41 MiB (1%) |       27915 |
| `["models", "hmm1", "creation_500"]`    |   9.488 ms (5%) |           |   6.97 MiB (1%) |      138321 |
| `["models", "hmm1", "inference_100"]`   |  56.628 ms (5%) |           |  36.20 MiB (1%) |      461205 |
| `["models", "hmm1", "inference_500"]`   | 479.257 ms (5%) | 99.675 ms | 180.34 MiB (1%) |     2298106 |
| `["models", "lgssm1", "creation_100"]`  |   1.311 ms (5%) |           | 970.33 KiB (1%) |       18420 |
| `["models", "lgssm1", "creation_500"]`  |   6.482 ms (5%) |           |   4.71 MiB (1%) |       91622 |
| `["models", "lgssm1", "inference_100"]` |   3.219 ms (5%) |           |   2.87 MiB (1%) |       44087 |
| `["models", "lgssm1", "inference_500"]` |  18.263 ms (5%) |           |  14.33 MiB (1%) |      220089 |
| `["models", "lgssm2", "creation_100"]`  |   1.920 ms (5%) |           |   1.40 MiB (1%) |       26669 |
| `["models", "lgssm2", "creation_500"]`  |   9.601 ms (5%) |           |   6.96 MiB (1%) |      132671 |
| `["models", "lgssm2", "inference_100"]` |   7.278 ms (5%) |           |   5.40 MiB (1%) |       79238 |
| `["models", "lgssm2", "inference_500"]` |  42.502 ms (5%) |           |  27.02 MiB (1%) |      396440 |

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
       #1  2800 MHz        685 s          0 s        117 s       3052 s          0 s
       #2  2800 MHz       3421 s          0 s        114 s        345 s          0 s
       
  Memory: 7.790031433105469 GB (5831.609375 MB free)
  Uptime: 389.0 sec
  Load Avg:  1.01  0.87  0.45
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-11.0.1 (ORCJIT, cascadelake)
```

---
# Baseline result
# Benchmark Report for */home/travis/build/biaslab/ReactiveMP.jl/benchmark/../*

## Job Properties
* Time of benchmark: 1 Apr 2021 - 11:2
* Package commit: c25493
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
| `["models", "hgf1", "creation"]`        |  38.920 μs (5%) |            |  36.67 KiB (1%) |         615 |
| `["models", "hgf1", "inference_100"]`   |  39.735 ms (5%) |            |  21.80 MiB (1%) |      357430 |
| `["models", "hgf1", "inference_1000"]`  | 446.621 ms (5%) |  49.095 ms | 216.93 MiB (1%) |     3557840 |
| `["models", "hgf1", "inference_500"]`   | 218.643 ms (5%) |  20.019 ms | 108.53 MiB (1%) |     1779837 |
| `["models", "hmm1", "creation_100"]`    |   1.982 ms (5%) |            |   1.42 MiB (1%) |       27915 |
| `["models", "hmm1", "creation_500"]`    |   9.749 ms (5%) |            |   7.04 MiB (1%) |      138321 |
| `["models", "hmm1", "inference_100"]`   |  63.970 ms (5%) |            |  37.20 MiB (1%) |      473215 |
| `["models", "hmm1", "inference_500"]`   | 534.687 ms (5%) | 102.508 ms | 185.37 MiB (1%) |     2358116 |
| `["models", "lgssm1", "creation_100"]`  |   1.402 ms (5%) |            | 975.06 KiB (1%) |       18420 |
| `["models", "lgssm1", "creation_500"]`  |   6.942 ms (5%) |            |   4.73 MiB (1%) |       91622 |
| `["models", "lgssm1", "inference_100"]` |   3.364 ms (5%) |            |   2.92 MiB (1%) |       44491 |
| `["models", "lgssm1", "inference_500"]` |  19.588 ms (5%) |            |  14.58 MiB (1%) |      222093 |
| `["models", "lgssm2", "creation_100"]`  |   2.046 ms (5%) |            |   1.41 MiB (1%) |       26669 |
| `["models", "lgssm2", "creation_500"]`  |  10.228 ms (5%) |            |   7.01 MiB (1%) |      132671 |
| `["models", "lgssm2", "inference_100"]` |   7.933 ms (5%) |            |   5.54 MiB (1%) |       80239 |
| `["models", "lgssm2", "inference_500"]` |  45.638 ms (5%) |            |  27.74 MiB (1%) |      401441 |

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
       #1  2800 MHz        894 s          0 s        128 s       4648 s          0 s
       #2  2800 MHz       5024 s          0 s        122 s        553 s          0 s
       
  Memory: 7.790031433105469 GB (5813.7109375 MB free)
  Uptime: 571.0 sec
  Load Avg:  1.04  0.96  0.56
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
    CPU MHz:               2800.200
    BogoMIPS:              5600.40
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

