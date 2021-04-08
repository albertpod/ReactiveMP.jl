# Benchmark result (via Travis)


# Judge result
# Benchmark Report for */home/travis/build/biaslab/ReactiveMP.jl/benchmark/../*

## Job Properties
* Time of benchmarks:
    - Target: 8 Apr 2021 - 10:07
    - Baseline: 8 Apr 2021 - 10:10
* Package commits:
    - Target: 43c2b6
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
| `["models", "hgf1", "creation"]`        |    1.02 (5%)  | 1.01 (1%) :x: |
| `["models", "hgf1", "inference_100"]`   | 1.11 (5%) :x: | 1.05 (1%) :x: |
| `["models", "hgf1", "inference_1000"]`  | 1.12 (5%) :x: | 1.05 (1%) :x: |
| `["models", "hgf1", "inference_500"]`   | 1.11 (5%) :x: | 1.05 (1%) :x: |
| `["models", "hmm1", "creation_100"]`    |    1.05 (5%)  | 1.01 (1%) :x: |
| `["models", "hmm1", "creation_500"]`    | 1.05 (5%) :x: |    1.01 (1%)  |
| `["models", "hmm1", "inference_100"]`   | 1.12 (5%) :x: | 1.03 (1%) :x: |
| `["models", "hmm1", "inference_500"]`   | 1.07 (5%) :x: | 1.03 (1%) :x: |
| `["models", "lgssm1", "creation_100"]`  | 1.12 (5%) :x: |    1.00 (1%)  |
| `["models", "lgssm1", "creation_500"]`  | 1.10 (5%) :x: |    1.00 (1%)  |
| `["models", "lgssm1", "inference_100"]` | 1.09 (5%) :x: | 1.02 (1%) :x: |
| `["models", "lgssm1", "inference_500"]` | 1.08 (5%) :x: | 1.02 (1%) :x: |
| `["models", "lgssm2", "creation_100"]`  | 1.09 (5%) :x: |    1.01 (1%)  |
| `["models", "lgssm2", "creation_500"]`  | 1.07 (5%) :x: |    1.01 (1%)  |
| `["models", "lgssm2", "inference_100"]` | 1.08 (5%) :x: | 1.03 (1%) :x: |
| `["models", "lgssm2", "inference_500"]` | 1.05 (5%) :x: | 1.03 (1%) :x: |

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
       #1  2800 MHz        789 s          0 s        103 s       2918 s          0 s
       #2  2800 MHz       3219 s          0 s        116 s        499 s          0 s
       
  Memory: 7.790031433105469 GB (5797.55859375 MB free)
  Uptime: 385.0 sec
  Load Avg:  1.01  0.88  0.45
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
       #1  2800 MHz        900 s          0 s        113 s       4541 s          0 s
       #2  2800 MHz       4847 s          0 s        125 s        609 s          0 s
       
  Memory: 7.790031433105469 GB (5748.125 MB free)
  Uptime: 560.0 sec
  Load Avg:  1.02  0.96  0.56
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-11.0.1 (ORCJIT, cascadelake)
```

---
# Target result
# Benchmark Report for */home/travis/build/biaslab/ReactiveMP.jl/benchmark/../*

## Job Properties
* Time of benchmark: 8 Apr 2021 - 10:7
* Package commit: 43c2b6
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
| `["models", "hgf1", "creation"]`        |  39.652 μs (5%) |           |  36.67 KiB (1%) |         615 |
| `["models", "hgf1", "inference_100"]`   |  39.625 ms (5%) |           |  21.80 MiB (1%) |      357430 |
| `["models", "hgf1", "inference_1000"]`  | 445.786 ms (5%) | 46.226 ms | 216.93 MiB (1%) |     3557840 |
| `["models", "hgf1", "inference_500"]`   | 217.628 ms (5%) | 18.834 ms | 108.53 MiB (1%) |     1779837 |
| `["models", "hmm1", "creation_100"]`    |   1.919 ms (5%) |           |   1.42 MiB (1%) |       27915 |
| `["models", "hmm1", "creation_500"]`    |   9.428 ms (5%) |           |   7.04 MiB (1%) |      138321 |
| `["models", "hmm1", "inference_100"]`   |  61.548 ms (5%) |           |  37.20 MiB (1%) |      473215 |
| `["models", "hmm1", "inference_500"]`   | 422.608 ms (5%) | 76.243 ms | 185.37 MiB (1%) |     2358116 |
| `["models", "lgssm1", "creation_100"]`  |   1.424 ms (5%) |           | 975.06 KiB (1%) |       18420 |
| `["models", "lgssm1", "creation_500"]`  |   7.063 ms (5%) |           |   4.73 MiB (1%) |       91622 |
| `["models", "lgssm1", "inference_100"]` |   3.456 ms (5%) |           |   2.92 MiB (1%) |       44491 |
| `["models", "lgssm1", "inference_500"]` |  19.105 ms (5%) |           |  14.58 MiB (1%) |      222093 |
| `["models", "lgssm2", "creation_100"]`  |   2.049 ms (5%) |           |   1.41 MiB (1%) |       26669 |
| `["models", "lgssm2", "creation_500"]`  |  10.164 ms (5%) |           |   7.01 MiB (1%) |      132671 |
| `["models", "lgssm2", "inference_100"]` |   7.621 ms (5%) |           |   5.54 MiB (1%) |       80239 |
| `["models", "lgssm2", "inference_500"]` |  41.505 ms (5%) |           |  27.74 MiB (1%) |      401441 |

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
       #1  2800 MHz        789 s          0 s        103 s       2918 s          0 s
       #2  2800 MHz       3219 s          0 s        116 s        499 s          0 s
       
  Memory: 7.790031433105469 GB (5797.55859375 MB free)
  Uptime: 385.0 sec
  Load Avg:  1.01  0.88  0.45
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-11.0.1 (ORCJIT, cascadelake)
```

---
# Baseline result
# Benchmark Report for */home/travis/build/biaslab/ReactiveMP.jl/benchmark/../*

## Job Properties
* Time of benchmark: 8 Apr 2021 - 10:10
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
| `["models", "hgf1", "creation"]`        |  38.850 μs (5%) |           |  36.27 KiB (1%) |         615 |
| `["models", "hgf1", "inference_100"]`   |  35.566 ms (5%) |           |  20.68 MiB (1%) |      339427 |
| `["models", "hgf1", "inference_1000"]`  | 398.527 ms (5%) | 39.095 ms | 205.79 MiB (1%) |     3377837 |
| `["models", "hgf1", "inference_500"]`   | 196.241 ms (5%) | 19.309 ms | 102.96 MiB (1%) |     1689834 |
| `["models", "hmm1", "creation_100"]`    |   1.834 ms (5%) |           |   1.41 MiB (1%) |       27915 |
| `["models", "hmm1", "creation_500"]`    |   8.962 ms (5%) |           |   6.97 MiB (1%) |      138321 |
| `["models", "hmm1", "inference_100"]`   |  54.837 ms (5%) |           |  36.20 MiB (1%) |      461205 |
| `["models", "hmm1", "inference_500"]`   | 394.886 ms (5%) | 90.547 ms | 180.34 MiB (1%) |     2298106 |
| `["models", "lgssm1", "creation_100"]`  |   1.274 ms (5%) |           | 970.33 KiB (1%) |       18420 |
| `["models", "lgssm1", "creation_500"]`  |   6.421 ms (5%) |           |   4.71 MiB (1%) |       91622 |
| `["models", "lgssm1", "inference_100"]` |   3.178 ms (5%) |           |   2.87 MiB (1%) |       44087 |
| `["models", "lgssm1", "inference_500"]` |  17.766 ms (5%) |           |  14.33 MiB (1%) |      220089 |
| `["models", "lgssm2", "creation_100"]`  |   1.888 ms (5%) |           |   1.40 MiB (1%) |       26669 |
| `["models", "lgssm2", "creation_500"]`  |   9.465 ms (5%) |           |   6.96 MiB (1%) |      132671 |
| `["models", "lgssm2", "inference_100"]` |   7.066 ms (5%) |           |   5.40 MiB (1%) |       79238 |
| `["models", "lgssm2", "inference_500"]` |  39.415 ms (5%) |           |  27.02 MiB (1%) |      396440 |

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
       #1  2800 MHz        900 s          0 s        113 s       4541 s          0 s
       #2  2800 MHz       4847 s          0 s        125 s        609 s          0 s
       
  Memory: 7.790031433105469 GB (5748.125 MB free)
  Uptime: 560.0 sec
  Load Avg:  1.02  0.96  0.56
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
    CPU MHz:               2800.180
    BogoMIPS:              5600.36
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

