# Benchmark result (via Travis)


# Judge result
# Benchmark Report for */home/travis/build/biaslab/ReactiveMP.jl/benchmark/../*

## Job Properties
* Time of benchmarks:
    - Target: 29 Mar 2021 - 14:04
    - Baseline: 29 Mar 2021 - 14:06
* Package commits:
    - Target: fe7259
    - Baseline: 94c241
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

| ID                                      | time ratio    | memory ratio  |
|-----------------------------------------|---------------|---------------|
| `["models", "lgssm1", "creation_100"]`  |    1.04 (5%)  | 1.10 (1%) :x: |
| `["models", "lgssm1", "creation_500"]`  | 1.07 (5%) :x: | 1.10 (1%) :x: |
| `["models", "lgssm1", "inference_100"]` | 1.05 (5%) :x: | 1.02 (1%) :x: |
| `["models", "lgssm1", "inference_500"]` | 1.06 (5%) :x: | 1.02 (1%) :x: |
| `["models", "lgssm2", "creation_100"]`  |    1.03 (5%)  | 1.12 (1%) :x: |
| `["models", "lgssm2", "creation_500"]`  | 1.06 (5%) :x: | 1.12 (1%) :x: |
| `["models", "lgssm2", "inference_100"]` |    1.03 (5%)  | 1.03 (1%) :x: |
| `["models", "lgssm2", "inference_500"]` |    1.03 (5%)  | 1.03 (1%) :x: |

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
       #1  2800 MHz      10795 s          0 s       1478 s      24945 s          0 s
       #2  2800 MHz      24234 s          0 s       1420 s      11792 s          0 s
       
  Memory: 7.790031433105469 GB (5783.84375 MB free)
  Uptime: 376.0 sec
  Load Avg:  1.13525390625  0.8291015625  0.39599609375
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
       #1  2800 MHz      11847 s          0 s       1531 s      37227 s          0 s
       #2  2800 MHz      36515 s          0 s       1529 s      12813 s          0 s
       
  Memory: 7.790031433105469 GB (5764.21484375 MB free)
  Uptime: 510.0 sec
  Load Avg:  1.0107421875  0.896484375  0.48388671875
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-9.0.1 (ORCJIT, cascadelake)
```

---
# Target result
# Benchmark Report for */home/travis/build/biaslab/ReactiveMP.jl/benchmark/../*

## Job Properties
* Time of benchmark: 29 Mar 2021 - 14:4
* Package commit: fe7259
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
| `["models", "lgssm1", "creation_100"]`  |  2.483 ms (5%) |         |  1.51 MiB (1%) |       27668 |
| `["models", "lgssm1", "creation_500"]`  | 12.853 ms (5%) |         |  7.50 MiB (1%) |      137670 |
| `["models", "lgssm1", "inference_100"]` |  5.545 ms (5%) |         |  3.62 MiB (1%) |       59462 |
| `["models", "lgssm1", "inference_500"]` | 32.252 ms (5%) |         | 18.04 MiB (1%) |      296265 |
| `["models", "lgssm2", "creation_100"]`  |  3.116 ms (5%) |         |  2.25 MiB (1%) |       40599 |
| `["models", "lgssm2", "creation_500"]`  | 16.166 ms (5%) |         | 11.21 MiB (1%) |      202201 |
| `["models", "lgssm2", "inference_100"]` | 10.161 ms (5%) |         |  6.48 MiB (1%) |      102566 |
| `["models", "lgssm2", "inference_500"]` | 59.890 ms (5%) |         | 32.37 MiB (1%) |      512169 |

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
       #1  2800 MHz      10795 s          0 s       1478 s      24945 s          0 s
       #2  2800 MHz      24234 s          0 s       1420 s      11792 s          0 s
       
  Memory: 7.790031433105469 GB (5783.84375 MB free)
  Uptime: 376.0 sec
  Load Avg:  1.13525390625  0.8291015625  0.39599609375
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-9.0.1 (ORCJIT, cascadelake)
```

---
# Baseline result
# Benchmark Report for */home/travis/build/biaslab/ReactiveMP.jl/benchmark/../*

## Job Properties
* Time of benchmark: 29 Mar 2021 - 14:6
* Package commit: 94c241
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
| `["models", "lgssm1", "creation_100"]`  |  2.384 ms (5%) |         |  1.37 MiB (1%) |       25961 |
| `["models", "lgssm1", "creation_500"]`  | 12.050 ms (5%) |         |  6.79 MiB (1%) |      129164 |
| `["models", "lgssm1", "inference_100"]` |  5.266 ms (5%) |         |  3.53 MiB (1%) |       59456 |
| `["models", "lgssm1", "inference_500"]` | 30.503 ms (5%) |         | 17.60 MiB (1%) |      296260 |
| `["models", "lgssm2", "creation_100"]`  |  3.019 ms (5%) |         |  2.02 MiB (1%) |       38099 |
| `["models", "lgssm2", "creation_500"]`  | 15.297 ms (5%) |         | 10.04 MiB (1%) |      189702 |
| `["models", "lgssm2", "inference_100"]` |  9.907 ms (5%) |         |  6.27 MiB (1%) |      102269 |
| `["models", "lgssm2", "inference_500"]` | 57.866 ms (5%) |         | 31.30 MiB (1%) |      510673 |

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
       #1  2800 MHz      11847 s          0 s       1531 s      37227 s          0 s
       #2  2800 MHz      36515 s          0 s       1529 s      12813 s          0 s
       
  Memory: 7.790031433105469 GB (5764.21484375 MB free)
  Uptime: 510.0 sec
  Load Avg:  1.0107421875  0.896484375  0.48388671875
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
    CPU MHz:               2800.184
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

