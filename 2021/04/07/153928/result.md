# Benchmark result (via Travis)


# Judge result
# Benchmark Report for */home/travis/build/biaslab/ReactiveMP.jl/benchmark/../*

## Job Properties
* Time of benchmarks:
    - Target: 7 Apr 2021 - 15:36
    - Baseline: 7 Apr 2021 - 15:39
* Package commits:
    - Target: 94a1ca
    - Baseline: f89fa3
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

| ID                                      | time ratio    | memory ratio  |
|-----------------------------------------|---------------|---------------|
| `["models", "hgf1", "creation"]`        |    0.96 (5%)  | 1.01 (1%) :x: |
| `["models", "hgf1", "inference_100"]`   | 1.09 (5%) :x: | 1.05 (1%) :x: |
| `["models", "hgf1", "inference_1000"]`  | 1.09 (5%) :x: | 1.05 (1%) :x: |
| `["models", "hgf1", "inference_500"]`   | 1.09 (5%) :x: | 1.05 (1%) :x: |
| `["models", "hmm1", "creation_100"]`    |    1.02 (5%)  | 1.01 (1%) :x: |
| `["models", "hmm1", "inference_100"]`   | 1.08 (5%) :x: | 1.03 (1%) :x: |
| `["models", "hmm1", "inference_500"]`   | 1.06 (5%) :x: | 1.03 (1%) :x: |
| `["models", "lgssm1", "creation_100"]`  | 1.10 (5%) :x: |    1.00 (1%)  |
| `["models", "lgssm1", "creation_500"]`  | 1.08 (5%) :x: |    1.00 (1%)  |
| `["models", "lgssm1", "inference_100"]` |    1.05 (5%)  | 1.02 (1%) :x: |
| `["models", "lgssm1", "inference_500"]` | 1.08 (5%) :x: | 1.02 (1%) :x: |
| `["models", "lgssm2", "inference_100"]` |    1.05 (5%)  | 1.03 (1%) :x: |
| `["models", "lgssm2", "inference_500"]` |    1.03 (5%)  | 1.03 (1%) :x: |

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
       #1  2800 MHz       1348 s          0 s        123 s       2263 s          0 s
       #2  2800 MHz       2590 s          0 s         94 s       1077 s          0 s
       
  Memory: 7.790031433105469 GB (5830.78515625 MB free)
  Uptime: 377.0 sec
  Load Avg:  1.0  0.84  0.42
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
       #1  2800 MHz       1450 s          0 s        130 s       3873 s          0 s
       #2  2800 MHz       4201 s          0 s        106 s       1173 s          0 s
       
  Memory: 7.790031433105469 GB (5818.21484375 MB free)
  Uptime: 549.0 sec
  Load Avg:  1.0  0.91  0.52
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-11.0.1 (ORCJIT, cascadelake)
```

---
# Target result
# Benchmark Report for */home/travis/build/biaslab/ReactiveMP.jl/benchmark/../*

## Job Properties
* Time of benchmark: 7 Apr 2021 - 15:36
* Package commit: 94a1ca
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
| `["models", "hgf1", "creation"]`        |  37.963 μs (5%) |           |  36.67 KiB (1%) |         615 |
| `["models", "hgf1", "inference_100"]`   |  39.109 ms (5%) |           |  21.80 MiB (1%) |      357430 |
| `["models", "hgf1", "inference_1000"]`  | 434.996 ms (5%) | 34.351 ms | 216.93 MiB (1%) |     3557840 |
| `["models", "hgf1", "inference_500"]`   | 213.713 ms (5%) | 17.527 ms | 108.53 MiB (1%) |     1779837 |
| `["models", "hmm1", "creation_100"]`    |   1.872 ms (5%) |           |   1.42 MiB (1%) |       27915 |
| `["models", "hmm1", "creation_500"]`    |   9.240 ms (5%) |           |   7.04 MiB (1%) |      138321 |
| `["models", "hmm1", "inference_100"]`   |  58.570 ms (5%) |           |  37.20 MiB (1%) |      473215 |
| `["models", "hmm1", "inference_500"]`   | 391.814 ms (5%) | 71.937 ms | 185.37 MiB (1%) |     2358116 |
| `["models", "lgssm1", "creation_100"]`  |   1.392 ms (5%) |           | 975.06 KiB (1%) |       18420 |
| `["models", "lgssm1", "creation_500"]`  |   6.933 ms (5%) |           |   4.73 MiB (1%) |       91622 |
| `["models", "lgssm1", "inference_100"]` |   3.285 ms (5%) |           |   2.92 MiB (1%) |       44491 |
| `["models", "lgssm1", "inference_500"]` |  18.342 ms (5%) |           |  14.58 MiB (1%) |      222093 |
| `["models", "lgssm2", "creation_100"]`  |   1.998 ms (5%) |           |   1.41 MiB (1%) |       26669 |
| `["models", "lgssm2", "creation_500"]`  |   9.937 ms (5%) |           |   7.01 MiB (1%) |      132671 |
| `["models", "lgssm2", "inference_100"]` |   7.404 ms (5%) |           |   5.54 MiB (1%) |       80239 |
| `["models", "lgssm2", "inference_500"]` |  40.018 ms (5%) |           |  27.74 MiB (1%) |      401441 |

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
       #1  2800 MHz       1348 s          0 s        123 s       2263 s          0 s
       #2  2800 MHz       2590 s          0 s         94 s       1077 s          0 s
       
  Memory: 7.790031433105469 GB (5830.78515625 MB free)
  Uptime: 377.0 sec
  Load Avg:  1.0  0.84  0.42
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-11.0.1 (ORCJIT, cascadelake)
```

---
# Baseline result
# Benchmark Report for */home/travis/build/biaslab/ReactiveMP.jl/benchmark/../*

## Job Properties
* Time of benchmark: 7 Apr 2021 - 15:39
* Package commit: f89fa3
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
| `["models", "hgf1", "creation"]`        |  39.384 μs (5%) |           |  36.27 KiB (1%) |         615 |
| `["models", "hgf1", "inference_100"]`   |  35.918 ms (5%) |           |  20.68 MiB (1%) |      339427 |
| `["models", "hgf1", "inference_1000"]`  | 397.927 ms (5%) | 37.308 ms | 205.79 MiB (1%) |     3377837 |
| `["models", "hgf1", "inference_500"]`   | 196.717 ms (5%) | 18.024 ms | 102.96 MiB (1%) |     1689834 |
| `["models", "hmm1", "creation_100"]`    |   1.831 ms (5%) |           |   1.41 MiB (1%) |       27915 |
| `["models", "hmm1", "creation_500"]`    |   8.968 ms (5%) |           |   6.97 MiB (1%) |      138321 |
| `["models", "hmm1", "inference_100"]`   |  54.198 ms (5%) |           |  36.20 MiB (1%) |      461205 |
| `["models", "hmm1", "inference_500"]`   | 369.613 ms (5%) | 67.274 ms | 180.34 MiB (1%) |     2298106 |
| `["models", "lgssm1", "creation_100"]`  |   1.266 ms (5%) |           | 970.33 KiB (1%) |       18420 |
| `["models", "lgssm1", "creation_500"]`  |   6.400 ms (5%) |           |   4.71 MiB (1%) |       91622 |
| `["models", "lgssm1", "inference_100"]` |   3.129 ms (5%) |           |   2.87 MiB (1%) |       44087 |
| `["models", "lgssm1", "inference_500"]` |  17.018 ms (5%) |           |  14.33 MiB (1%) |      220089 |
| `["models", "lgssm2", "creation_100"]`  |   1.958 ms (5%) |           |   1.40 MiB (1%) |       26669 |
| `["models", "lgssm2", "creation_500"]`  |   9.757 ms (5%) |           |   6.96 MiB (1%) |      132671 |
| `["models", "lgssm2", "inference_100"]` |   7.062 ms (5%) |           |   5.40 MiB (1%) |       79238 |
| `["models", "lgssm2", "inference_500"]` |  38.826 ms (5%) |           |  27.02 MiB (1%) |      396440 |

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
       #1  2800 MHz       1450 s          0 s        130 s       3873 s          0 s
       #2  2800 MHz       4201 s          0 s        106 s       1173 s          0 s
       
  Memory: 7.790031433105469 GB (5818.21484375 MB free)
  Uptime: 549.0 sec
  Load Avg:  1.0  0.91  0.52
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
    CPU MHz:               2800.194
    BogoMIPS:              5600.38
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

