# Benchmark result (via Travis)


# Judge result
# Benchmark Report for */home/travis/build/biaslab/ReactiveMP.jl/benchmark/../*

## Job Properties
* Time of benchmarks:
    - Target: 24 Mar 2021 - 14:49
    - Baseline: 24 Mar 2021 - 14:51
* Package commits:
    - Target: cbc101
    - Baseline: cbc101
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
       #1  2800 MHz       7700 s          0 s       1429 s      26554 s          0 s
       #2  2800 MHz      25603 s          0 s       1354 s       9196 s          0 s
       
  Memory: 7.790031433105469 GB (5747.359375 MB free)
  Uptime: 362.0 sec
  Load Avg:  1.0107421875  0.7529296875  0.35888671875
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
       #1  2800 MHz      12439 s          0 s       1488 s      31909 s          0 s
       #2  2800 MHz      30994 s          0 s       1390 s      13922 s          0 s
       
  Memory: 7.790031433105469 GB (5747.3828125 MB free)
  Uptime: 464.0 sec
  Load Avg:  1.19970703125  0.8876953125  0.44970703125
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-9.0.1 (ORCJIT, cascadelake)
```

---
# Target result
# Benchmark Report for */home/travis/build/biaslab/ReactiveMP.jl/benchmark/../*

## Job Properties
* Time of benchmark: 24 Mar 2021 - 14:49
* Package commit: cbc101
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
| `["models", "lgssm1", "creation_100"]`  |  2.436 ms (5%) |         |  1.37 MiB (1%) |       25961 |
| `["models", "lgssm1", "creation_500"]`  | 12.100 ms (5%) |         |  6.79 MiB (1%) |      129164 |
| `["models", "lgssm1", "inference_100"]` |  5.300 ms (5%) |         |  3.53 MiB (1%) |       59456 |
| `["models", "lgssm1", "inference_500"]` | 31.614 ms (5%) |         | 17.60 MiB (1%) |      296260 |
| `["models", "lgssm2", "creation_100"]`  |  3.039 ms (5%) |         |  2.02 MiB (1%) |       38099 |
| `["models", "lgssm2", "creation_500"]`  | 15.331 ms (5%) |         | 10.04 MiB (1%) |      189702 |
| `["models", "lgssm2", "inference_100"]` |  9.800 ms (5%) |         |  6.27 MiB (1%) |      102269 |
| `["models", "lgssm2", "inference_500"]` | 58.329 ms (5%) |         | 31.30 MiB (1%) |      510673 |

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
       #1  2800 MHz       7700 s          0 s       1429 s      26554 s          0 s
       #2  2800 MHz      25603 s          0 s       1354 s       9196 s          0 s
       
  Memory: 7.790031433105469 GB (5747.359375 MB free)
  Uptime: 362.0 sec
  Load Avg:  1.0107421875  0.7529296875  0.35888671875
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-9.0.1 (ORCJIT, cascadelake)
```

---
# Baseline result
# Benchmark Report for */home/travis/build/biaslab/ReactiveMP.jl/benchmark/../*

## Job Properties
* Time of benchmark: 24 Mar 2021 - 14:51
* Package commit: cbc101
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
| `["models", "lgssm1", "creation_100"]`  |  2.385 ms (5%) |            |   1.37 MiB (1%) |       25961 |
| `["models", "lgssm1", "creation_500"]`  | 11.876 ms (5%) |            |   6.79 MiB (1%) |      129164 |
| `["models", "lgssm1", "inference_100"]` |  5.230 ms (5%) |            |   3.53 MiB (1%) |       59456 |
| `["models", "lgssm1", "inference_500"]` | 31.031 ms (5%) |            |  17.60 MiB (1%) |      296260 |
| `["models", "lgssm2", "creation_100"]`  |  3.000 ms (5%) |            |   2.02 MiB (1%) |       38099 |
| `["models", "lgssm2", "creation_500"]`  | 15.073 ms (5%) |            |  10.04 MiB (1%) |      189702 |
| `["models", "lgssm2", "inference_100"]` |  9.451 ms (5%) |            |   6.27 MiB (1%) |      102269 |
| `["models", "lgssm2", "inference_500"]` |   7.288 s (5%) | 257.595 ms | 673.38 MiB (1%) |    13134040 |

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
       #1  2800 MHz      12439 s          0 s       1488 s      31909 s          0 s
       #2  2800 MHz      30994 s          0 s       1390 s      13922 s          0 s
       
  Memory: 7.790031433105469 GB (5747.3828125 MB free)
  Uptime: 464.0 sec
  Load Avg:  1.19970703125  0.8876953125  0.44970703125
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
    CPU MHz:               2800.182
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

