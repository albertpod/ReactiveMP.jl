# Benchmark result (via Travis)


# Judge result
# Benchmark Report for */home/travis/build/biaslab/ReactiveMP.jl/benchmark/../*

## Job Properties
* Time of benchmarks:
    - Target: 21 Apr 2021 - 11:26
    - Baseline: 21 Apr 2021 - 11:29
* Package commits:
    - Target: 3a5b0a
    - Baseline: 3a5b0a
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
       #1  2800 MHz       3368 s          0 s        110 s        311 s          0 s
       #2  2800 MHz        659 s          0 s        109 s       3035 s          0 s
       
  Memory: 7.790031433105469 GB (5823.5390625 MB free)
  Uptime: 382.0 sec
  Load Avg:  1.0  0.85  0.43
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
       #1  2800 MHz       4946 s          0 s        117 s        368 s          0 s
       #2  2800 MHz        719 s          0 s        113 s       4610 s          0 s
       
  Memory: 7.790031433105469 GB (5802.921875 MB free)
  Uptime: 546.0 sec
  Load Avg:  1.08  0.93  0.53
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-11.0.1 (ORCJIT, cascadelake)
```

---
# Target result
# Benchmark Report for */home/travis/build/biaslab/ReactiveMP.jl/benchmark/../*

## Job Properties
* Time of benchmark: 21 Apr 2021 - 11:26
* Package commit: 3a5b0a
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
| `["models", "hgf1", "creation"]`        |  39.459 μs (5%) |           |  37.61 KiB (1%) |         650 |
| `["models", "hgf1", "inference_100"]`   |  33.857 ms (5%) |           |  19.14 MiB (1%) |      319458 |
| `["models", "hgf1", "inference_1000"]`  | 374.655 ms (5%) | 37.495 ms | 190.38 MiB (1%) |     3177868 |
| `["models", "hgf1", "inference_500"]`   | 186.852 ms (5%) | 18.644 ms |  95.25 MiB (1%) |     1589865 |
| `["models", "hmm1", "creation_100"]`    |   1.877 ms (5%) |           |   1.41 MiB (1%) |       28928 |
| `["models", "hmm1", "creation_500"]`    |   9.352 ms (5%) |           |   6.97 MiB (1%) |      143334 |
| `["models", "hmm1", "inference_100"]`   |  54.392 ms (5%) |           |  34.20 MiB (1%) |      445310 |
| `["models", "hmm1", "inference_500"]`   | 381.426 ms (5%) | 72.019 ms | 170.44 MiB (1%) |     2219009 |
| `["models", "lgssm1", "creation_100"]`  |   1.299 ms (5%) |           | 970.33 KiB (1%) |       19124 |
| `["models", "lgssm1", "creation_500"]`  |   6.475 ms (5%) |           |   4.71 MiB (1%) |       95126 |
| `["models", "lgssm1", "inference_100"]` |   3.011 ms (5%) |           |   2.80 MiB (1%) |       43890 |
| `["models", "lgssm1", "inference_500"]` |  16.949 ms (5%) |           |  13.99 MiB (1%) |      219092 |
| `["models", "lgssm2", "creation_100"]`  |   1.907 ms (5%) |           |   1.40 MiB (1%) |       27673 |
| `["models", "lgssm2", "creation_500"]`  |   9.560 ms (5%) |           |   6.96 MiB (1%) |      137675 |
| `["models", "lgssm2", "inference_100"]` |   6.800 ms (5%) |           |   5.30 MiB (1%) |       78942 |
| `["models", "lgssm2", "inference_500"]` |  37.323 ms (5%) |           |  26.55 MiB (1%) |      394944 |

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
       #1  2800 MHz       3368 s          0 s        110 s        311 s          0 s
       #2  2800 MHz        659 s          0 s        109 s       3035 s          0 s
       
  Memory: 7.790031433105469 GB (5823.5390625 MB free)
  Uptime: 382.0 sec
  Load Avg:  1.0  0.85  0.43
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-11.0.1 (ORCJIT, cascadelake)
```

---
# Baseline result
# Benchmark Report for */home/travis/build/biaslab/ReactiveMP.jl/benchmark/../*

## Job Properties
* Time of benchmark: 21 Apr 2021 - 11:29
* Package commit: 3a5b0a
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
| `["models", "hgf1", "creation"]`        |  39.254 μs (5%) |           |  37.61 KiB (1%) |         650 |
| `["models", "hgf1", "inference_100"]`   |  34.317 ms (5%) |           |  19.14 MiB (1%) |      319458 |
| `["models", "hgf1", "inference_1000"]`  | 378.839 ms (5%) | 36.657 ms | 190.38 MiB (1%) |     3177868 |
| `["models", "hgf1", "inference_500"]`   | 189.408 ms (5%) | 18.293 ms |  95.25 MiB (1%) |     1589865 |
| `["models", "hmm1", "creation_100"]`    |   1.867 ms (5%) |           |   1.41 MiB (1%) |       28928 |
| `["models", "hmm1", "creation_500"]`    |   9.189 ms (5%) |           |   6.97 MiB (1%) |      143334 |
| `["models", "hmm1", "inference_100"]`   |  53.284 ms (5%) |           |  34.20 MiB (1%) |      445310 |
| `["models", "hmm1", "inference_500"]`   | 399.881 ms (5%) | 84.372 ms | 170.44 MiB (1%) |     2219009 |
| `["models", "lgssm1", "creation_100"]`  |   1.296 ms (5%) |           | 970.33 KiB (1%) |       19124 |
| `["models", "lgssm1", "creation_500"]`  |   6.486 ms (5%) |           |   4.71 MiB (1%) |       95126 |
| `["models", "lgssm1", "inference_100"]` |   3.012 ms (5%) |           |   2.80 MiB (1%) |       43890 |
| `["models", "lgssm1", "inference_500"]` |  16.881 ms (5%) |           |  13.99 MiB (1%) |      219092 |
| `["models", "lgssm2", "creation_100"]`  |   1.972 ms (5%) |           |   1.40 MiB (1%) |       27673 |
| `["models", "lgssm2", "creation_500"]`  |   9.820 ms (5%) |           |   6.96 MiB (1%) |      137675 |
| `["models", "lgssm2", "inference_100"]` |   6.935 ms (5%) |           |   5.30 MiB (1%) |       78942 |
| `["models", "lgssm2", "inference_500"]` |  38.095 ms (5%) |           |  26.55 MiB (1%) |      394944 |

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
       #1  2800 MHz       4946 s          0 s        117 s        368 s          0 s
       #2  2800 MHz        719 s          0 s        113 s       4610 s          0 s
       
  Memory: 7.790031433105469 GB (5802.921875 MB free)
  Uptime: 546.0 sec
  Load Avg:  1.08  0.93  0.53
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
    CPU MHz:               2800.246
    BogoMIPS:              5600.49
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

