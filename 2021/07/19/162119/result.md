# Benchmark result (via Travis)


# Judge result
# Benchmark Report for */home/runner/work/ReactiveMP.jl/ReactiveMP.jl/benchmark/../*

## Job Properties
* Time of benchmarks:
    - Target: 19 Jul 2021 - 16:17
    - Baseline: 19 Jul 2021 - 16:20
* Package commits:
    - Target: 79e259
    - Baseline: 79e259
* Julia commits:
    - Target: 1b93d5
    - Baseline: 1b93d5
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
Julia Version 1.6.2
Commit 1b93d53fc4 (2021-07-14 15:36 UTC)
Platform Info:
  OS: Linux (x86_64-pc-linux-gnu)
      Ubuntu 20.04.2 LTS
  uname: Linux 5.8.0-1036-azure #38~20.04.1-Ubuntu SMP Thu Jun 17 14:14:18 UTC 2021 x86_64 x86_64
  CPU: Intel(R) Xeon(R) Platinum 8272CL CPU @ 2.60GHz: 
              speed         user         nice          sys         idle          irq
       #1  2593 MHz        667 s          1 s        130 s       3454 s          0 s
       #2  2593 MHz       3404 s          1 s        117 s        776 s          0 s
       
  Memory: 6.790924072265625 GB (3756.71484375 MB free)
  Uptime: 431.0 sec
  Load Avg:  1.03  0.89  0.46
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-11.0.1 (ORCJIT, skylake-avx512)
```

### Baseline
```
Julia Version 1.6.2
Commit 1b93d53fc4 (2021-07-14 15:36 UTC)
Platform Info:
  OS: Linux (x86_64-pc-linux-gnu)
      Ubuntu 20.04.2 LTS
  uname: Linux 5.8.0-1036-azure #38~20.04.1-Ubuntu SMP Thu Jun 17 14:14:18 UTC 2021 x86_64 x86_64
  CPU: Intel(R) Xeon(R) Platinum 8272CL CPU @ 2.60GHz: 
              speed         user         nice          sys         idle          irq
       #1  2593 MHz       2376 s          1 s        138 s       3502 s          0 s
       #2  2593 MHz       3469 s          1 s        122 s       2464 s          0 s
       
  Memory: 6.790924072265625 GB (3500.265625 MB free)
  Uptime: 608.0 sec
  Load Avg:  1.0  0.94  0.56
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-11.0.1 (ORCJIT, skylake-avx512)
```

---
# Target result
# Benchmark Report for */home/runner/work/ReactiveMP.jl/ReactiveMP.jl/benchmark/../*

## Job Properties
* Time of benchmark: 19 Jul 2021 - 16:17
* Package commit: 79e259
* Julia commit: 1b93d5
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
| `["models", "hgf1", "creation"]`        |  49.601 μs (5%) |            |  38.78 KiB (1%) |         673 |
| `["models", "hgf1", "inference_100"]`   |  28.106 ms (5%) |            |  18.81 MiB (1%) |      308473 |
| `["models", "hgf1", "inference_1000"]`  | 321.859 ms (5%) |  45.558 ms | 187.02 MiB (1%) |     3067883 |
| `["models", "hgf1", "inference_500"]`   | 161.764 ms (5%) |  23.127 ms |  93.58 MiB (1%) |     1534880 |
| `["models", "hmm1", "creation_100"]`    |   2.420 ms (5%) |            |   1.43 MiB (1%) |       29834 |
| `["models", "hmm1", "creation_500"]`    |  12.219 ms (5%) |            |   7.10 MiB (1%) |      147840 |
| `["models", "hmm1", "inference_100"]`   |  53.843 ms (5%) |            |  34.22 MiB (1%) |      446012 |
| `["models", "hmm1", "inference_500"]`   | 501.364 ms (5%) | 115.756 ms | 170.54 MiB (1%) |     2222511 |
| `["models", "lgssm1", "creation_100"]`  |   1.690 ms (5%) |            | 968.92 KiB (1%) |       19127 |
| `["models", "lgssm1", "creation_500"]`  |   8.433 ms (5%) |            |   4.70 MiB (1%) |       95129 |
| `["models", "lgssm1", "inference_100"]` |   3.704 ms (5%) |            |   2.83 MiB (1%) |       44685 |
| `["models", "lgssm1", "inference_500"]` |  20.563 ms (5%) |            |  14.14 MiB (1%) |      223087 |
| `["models", "lgssm2", "creation_100"]`  |   2.477 ms (5%) |            |   1.40 MiB (1%) |       27676 |
| `["models", "lgssm2", "creation_500"]`  |  12.530 ms (5%) |            |   6.94 MiB (1%) |      137678 |
| `["models", "lgssm2", "inference_100"]` |   6.995 ms (5%) |            |   5.16 MiB (1%) |       76668 |
| `["models", "lgssm2", "inference_500"]` |  39.131 ms (5%) |            |  25.80 MiB (1%) |      383470 |

## Benchmark Group List
Here's a list of all the benchmark groups executed by this job:

- `["models", "hgf1"]`
- `["models", "hmm1"]`
- `["models", "lgssm1"]`
- `["models", "lgssm2"]`

## Julia versioninfo
```
Julia Version 1.6.2
Commit 1b93d53fc4 (2021-07-14 15:36 UTC)
Platform Info:
  OS: Linux (x86_64-pc-linux-gnu)
      Ubuntu 20.04.2 LTS
  uname: Linux 5.8.0-1036-azure #38~20.04.1-Ubuntu SMP Thu Jun 17 14:14:18 UTC 2021 x86_64 x86_64
  CPU: Intel(R) Xeon(R) Platinum 8272CL CPU @ 2.60GHz: 
              speed         user         nice          sys         idle          irq
       #1  2593 MHz        667 s          1 s        130 s       3454 s          0 s
       #2  2593 MHz       3404 s          1 s        117 s        776 s          0 s
       
  Memory: 6.790924072265625 GB (3756.71484375 MB free)
  Uptime: 431.0 sec
  Load Avg:  1.03  0.89  0.46
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-11.0.1 (ORCJIT, skylake-avx512)
```

---
# Baseline result
# Benchmark Report for */home/runner/work/ReactiveMP.jl/ReactiveMP.jl/benchmark/../*

## Job Properties
* Time of benchmark: 19 Jul 2021 - 16:20
* Package commit: 79e259
* Julia commit: 1b93d5
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
| `["models", "hgf1", "creation"]`        |  50.600 μs (5%) |            |  38.78 KiB (1%) |         673 |
| `["models", "hgf1", "inference_100"]`   |  29.411 ms (5%) |            |  18.81 MiB (1%) |      308473 |
| `["models", "hgf1", "inference_1000"]`  | 335.720 ms (5%) |  45.247 ms | 187.02 MiB (1%) |     3067883 |
| `["models", "hgf1", "inference_500"]`   | 167.834 ms (5%) |  22.777 ms |  93.58 MiB (1%) |     1534880 |
| `["models", "hmm1", "creation_100"]`    |   2.407 ms (5%) |            |   1.43 MiB (1%) |       29834 |
| `["models", "hmm1", "creation_500"]`    |  12.290 ms (5%) |            |   7.10 MiB (1%) |      147840 |
| `["models", "hmm1", "inference_100"]`   |  52.579 ms (5%) |            |  34.22 MiB (1%) |      446012 |
| `["models", "hmm1", "inference_500"]`   | 481.902 ms (5%) | 106.081 ms | 170.54 MiB (1%) |     2222511 |
| `["models", "lgssm1", "creation_100"]`  |   1.688 ms (5%) |            | 968.92 KiB (1%) |       19127 |
| `["models", "lgssm1", "creation_500"]`  |   8.476 ms (5%) |            |   4.70 MiB (1%) |       95129 |
| `["models", "lgssm1", "inference_100"]` |   3.744 ms (5%) |            |   2.83 MiB (1%) |       44685 |
| `["models", "lgssm1", "inference_500"]` |  20.314 ms (5%) |            |  14.14 MiB (1%) |      223087 |
| `["models", "lgssm2", "creation_100"]`  |   2.529 ms (5%) |            |   1.40 MiB (1%) |       27676 |
| `["models", "lgssm2", "creation_500"]`  |  12.857 ms (5%) |            |   6.94 MiB (1%) |      137678 |
| `["models", "lgssm2", "inference_100"]` |   7.215 ms (5%) |            |   5.16 MiB (1%) |       76668 |
| `["models", "lgssm2", "inference_500"]` |  40.673 ms (5%) |            |  25.80 MiB (1%) |      383470 |

## Benchmark Group List
Here's a list of all the benchmark groups executed by this job:

- `["models", "hgf1"]`
- `["models", "hmm1"]`
- `["models", "lgssm1"]`
- `["models", "lgssm2"]`

## Julia versioninfo
```
Julia Version 1.6.2
Commit 1b93d53fc4 (2021-07-14 15:36 UTC)
Platform Info:
  OS: Linux (x86_64-pc-linux-gnu)
      Ubuntu 20.04.2 LTS
  uname: Linux 5.8.0-1036-azure #38~20.04.1-Ubuntu SMP Thu Jun 17 14:14:18 UTC 2021 x86_64 x86_64
  CPU: Intel(R) Xeon(R) Platinum 8272CL CPU @ 2.60GHz: 
              speed         user         nice          sys         idle          irq
       #1  2593 MHz       2376 s          1 s        138 s       3502 s          0 s
       #2  2593 MHz       3469 s          1 s        122 s       2464 s          0 s
       
  Memory: 6.790924072265625 GB (3500.265625 MB free)
  Uptime: 608.0 sec
  Load Avg:  1.0  0.94  0.56
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-11.0.1 (ORCJIT, skylake-avx512)
```

---
# Runtime information
| Runtime Info | |
|:--|:--|
| BLAS #threads | 2 |
| `BLAS.vendor()` | `openblas64` |
| `Sys.CPU_THREADS` | 2 |

`lscpu` output:

    Architecture:                    x86_64
    CPU op-mode(s):                  32-bit, 64-bit
    Byte Order:                      Little Endian
    Address sizes:                   46 bits physical, 48 bits virtual
    CPU(s):                          2
    On-line CPU(s) list:             0,1
    Thread(s) per core:              1
    Core(s) per socket:              2
    Socket(s):                       1
    NUMA node(s):                    1
    Vendor ID:                       GenuineIntel
    CPU family:                      6
    Model:                           85
    Model name:                      Intel(R) Xeon(R) Platinum 8272CL CPU @ 2.60GHz
    Stepping:                        7
    CPU MHz:                         2593.907
    BogoMIPS:                        5187.81
    Hypervisor vendor:               Microsoft
    Virtualization type:             full
    L1d cache:                       64 KiB
    L1i cache:                       64 KiB
    L2 cache:                        2 MiB
    L3 cache:                        35.8 MiB
    NUMA node0 CPU(s):               0,1
    Vulnerability Itlb multihit:     KVM: Mitigation: VMX unsupported
    Vulnerability L1tf:              Mitigation; PTE Inversion
    Vulnerability Mds:               Mitigation; Clear CPU buffers; SMT Host state unknown
    Vulnerability Meltdown:          Mitigation; PTI
    Vulnerability Spec store bypass: Vulnerable
    Vulnerability Spectre v1:        Mitigation; usercopy/swapgs barriers and __user pointer sanitization
    Vulnerability Spectre v2:        Mitigation; Full generic retpoline, STIBP disabled, RSB filling
    Vulnerability Srbds:             Not affected
    Vulnerability Tsx async abort:   Mitigation; Clear CPU buffers; SMT Host state unknown
    Flags:                           fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ss ht syscall nx pdpe1gb rdtscp lm constant_tsc rep_good nopl xtopology cpuid pni pclmulqdq ssse3 fma cx16 pcid sse4_1 sse4_2 movbe popcnt aes xsave avx f16c rdrand hypervisor lahf_lm abm 3dnowprefetch invpcid_single pti fsgsbase bmi1 hle avx2 smep bmi2 erms invpcid rtm mpx avx512f avx512dq rdseed adx smap clflushopt avx512cd avx512bw avx512vl xsaveopt xsavec xsaves md_clear
    

| Cpu Property       | Value                                                   |
|:------------------ |:------------------------------------------------------- |
| Brand              | Intel(R) Xeon(R) Platinum 8272CL CPU @ 2.60GHz          |
| Vendor             | :Intel                                                  |
| Architecture       | :Skylake                                                |
| Model              | Family: 0x06, Model: 0x55, Stepping: 0x07, Type: 0x00   |
| Cores              | 2 physical cores, 2 logical cores (on executing CPU)    |
|                    | No Hyperthreading hardware capability detected          |
| Clock Frequencies  | Not supported by CPU                                    |
| Data Cache         | Level 1:3 : (32, 1024, 36608) kbytes                    |
|                    | 64 byte cache line size                                 |
| Address Size       | 48 bits virtual, 46 bits physical                       |
| SIMD               | 512 bit = 64 byte max. SIMD vector size                 |
| Time Stamp Counter | TSC is accessible via `rdtsc`                           |
|                    | TSC increased at every clock cycle (non-invariant TSC)  |
| Perf. Monitoring   | Performance Monitoring Counters (PMC) are not supported |
| Hypervisor         | Yes, Microsoft                                          |

