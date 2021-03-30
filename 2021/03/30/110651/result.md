# Benchmark result (via Travis)


# Judge result
# Benchmark Report for */home/travis/build/biaslab/ReactiveMP.jl/benchmark/../*

## Job Properties
* Time of benchmarks:
    - Target: 30 Mar 2021 - 11:03
    - Baseline: 30 Mar 2021 - 11:06
* Package commits:
    - Target: c25493
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

| ID                                      | time ratio    | memory ratio |
|-----------------------------------------|---------------|--------------|
| `["models", "hgf1", "creation"]`        | 1.06 (5%) :x: |   1.00 (1%)  |

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
       #1  2800 MHz       1738 s          0 s        128 s       1935 s          0 s
       #2  2800 MHz       2291 s          0 s         96 s       1441 s          0 s
       
  Memory: 7.790031433105469 GB (5842.15234375 MB free)
  Uptime: 384.0 sec
  Load Avg:  1.0  0.86  0.43
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
       #1  2800 MHz       2209 s          0 s        136 s       3099 s          0 s
       #2  2800 MHz       3462 s          0 s        100 s       1911 s          0 s
       
  Memory: 7.790031433105469 GB (5820.36328125 MB free)
  Uptime: 548.0 sec
  Load Avg:  1.0  0.92  0.53
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-11.0.1 (ORCJIT, cascadelake)
```

---
# Target result
# Benchmark Report for */home/travis/build/biaslab/ReactiveMP.jl/benchmark/../*

## Job Properties
* Time of benchmark: 30 Mar 2021 - 11:3
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

| ID                                      | time            | GC time   | memory          | allocations |
|-----------------------------------------|----------------:|----------:|----------------:|------------:|
| `["models", "hgf1", "creation"]`        |  40.896 μs (5%) |           |  36.67 KiB (1%) |         615 |
| `["models", "hgf1", "inference_100"]`   |  40.441 ms (5%) |           |  21.80 MiB (1%) |      357430 |
| `["models", "hgf1", "inference_1000"]`  | 450.828 ms (5%) | 46.910 ms | 216.93 MiB (1%) |     3557840 |
| `["models", "hgf1", "inference_500"]`   | 219.476 ms (5%) | 18.571 ms | 108.53 MiB (1%) |     1779837 |
| `["models", "hmm1", "creation_100"]`    |   1.939 ms (5%) |           |   1.42 MiB (1%) |       27915 |
| `["models", "hmm1", "creation_500"]`    |   9.506 ms (5%) |           |   7.04 MiB (1%) |      138321 |
| `["models", "hmm1", "inference_100"]`   |  62.119 ms (5%) |           |  37.20 MiB (1%) |      473215 |
| `["models", "hmm1", "inference_500"]`   | 430.423 ms (5%) | 75.840 ms | 185.37 MiB (1%) |     2358116 |
| `["models", "lgssm1", "creation_100"]`  |   1.424 ms (5%) |           | 975.06 KiB (1%) |       18420 |
| `["models", "lgssm1", "creation_500"]`  |   7.070 ms (5%) |           |   4.73 MiB (1%) |       91622 |
| `["models", "lgssm1", "inference_100"]` |   3.396 ms (5%) |           |   2.92 MiB (1%) |       44491 |
| `["models", "lgssm1", "inference_500"]` |  19.281 ms (5%) |           |  14.58 MiB (1%) |      222093 |
| `["models", "lgssm2", "creation_100"]`  |   2.047 ms (5%) |           |   1.41 MiB (1%) |       26669 |
| `["models", "lgssm2", "creation_500"]`  |  10.202 ms (5%) |           |   7.01 MiB (1%) |      132671 |
| `["models", "lgssm2", "inference_100"]` |   7.627 ms (5%) |           |   5.54 MiB (1%) |       80239 |
| `["models", "lgssm2", "inference_500"]` |  42.206 ms (5%) |           |  27.74 MiB (1%) |      401441 |

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
       #1  2800 MHz       1738 s          0 s        128 s       1935 s          0 s
       #2  2800 MHz       2291 s          0 s         96 s       1441 s          0 s
       
  Memory: 7.790031433105469 GB (5842.15234375 MB free)
  Uptime: 384.0 sec
  Load Avg:  1.0  0.86  0.43
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-11.0.1 (ORCJIT, cascadelake)
```

---
# Baseline result
# Benchmark Report for */home/travis/build/biaslab/ReactiveMP.jl/benchmark/../*

## Job Properties
* Time of benchmark: 30 Mar 2021 - 11:6
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

| ID                                      | time            | GC time   | memory          | allocations |
|-----------------------------------------|----------------:|----------:|----------------:|------------:|
| `["models", "hgf1", "creation"]`        |  38.521 μs (5%) |           |  36.67 KiB (1%) |         615 |
| `["models", "hgf1", "inference_100"]`   |  39.298 ms (5%) |           |  21.80 MiB (1%) |      357430 |
| `["models", "hgf1", "inference_1000"]`  | 441.840 ms (5%) | 47.757 ms | 216.93 MiB (1%) |     3557840 |
| `["models", "hgf1", "inference_500"]`   | 218.096 ms (5%) | 19.585 ms | 108.53 MiB (1%) |     1779837 |
| `["models", "hmm1", "creation_100"]`    |   1.946 ms (5%) |           |   1.42 MiB (1%) |       27915 |
| `["models", "hmm1", "creation_500"]`    |   9.577 ms (5%) |           |   7.04 MiB (1%) |      138321 |
| `["models", "hmm1", "inference_100"]`   |  61.107 ms (5%) |           |  37.20 MiB (1%) |      473215 |
| `["models", "hmm1", "inference_500"]`   | 436.343 ms (5%) | 79.086 ms | 185.37 MiB (1%) |     2358116 |
| `["models", "lgssm1", "creation_100"]`  |   1.428 ms (5%) |           | 975.06 KiB (1%) |       18420 |
| `["models", "lgssm1", "creation_500"]`  |   7.097 ms (5%) |           |   4.73 MiB (1%) |       91622 |
| `["models", "lgssm1", "inference_100"]` |   3.368 ms (5%) |           |   2.92 MiB (1%) |       44491 |
| `["models", "lgssm1", "inference_500"]` |  18.748 ms (5%) |           |  14.58 MiB (1%) |      222093 |
| `["models", "lgssm2", "creation_100"]`  |   2.049 ms (5%) |           |   1.41 MiB (1%) |       26669 |
| `["models", "lgssm2", "creation_500"]`  |  10.133 ms (5%) |           |   7.01 MiB (1%) |      132671 |
| `["models", "lgssm2", "inference_100"]` |   7.567 ms (5%) |           |   5.54 MiB (1%) |       80239 |
| `["models", "lgssm2", "inference_500"]` |  42.002 ms (5%) |           |  27.74 MiB (1%) |      401441 |

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
       #1  2800 MHz       2209 s          0 s        136 s       3099 s          0 s
       #2  2800 MHz       3462 s          0 s        100 s       1911 s          0 s
       
  Memory: 7.790031433105469 GB (5820.36328125 MB free)
  Uptime: 548.0 sec
  Load Avg:  1.0  0.92  0.53
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
    CPU MHz:               2800.164
    BogoMIPS:              5600.32
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

