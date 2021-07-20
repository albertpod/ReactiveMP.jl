# Benchmark result (via Travis)


# Judge result
# Benchmark Report for */home/runner/work/ReactiveMP.jl/ReactiveMP.jl/benchmark/../*

## Job Properties
* Time of benchmarks:
    - Target: 20 Jul 2021 - 12:16
    - Baseline: 20 Jul 2021 - 12:19
* Package commits:
    - Target: 3e3109
    - Baseline: 3e3109
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

| ID                                      | time ratio                   | memory ratio |
|-----------------------------------------|------------------------------|--------------|
| `["models", "hgf1", "creation"]`        |                1.11 (5%) :x: |   1.00 (1%)  |
| `["models", "hgf1", "inference_100"]`   |                1.06 (5%) :x: |   1.00 (1%)  |
| `["models", "hmm1", "creation_100"]`    |                1.10 (5%) :x: |   1.00 (1%)  |
| `["models", "hmm1", "creation_500"]`    |                1.10 (5%) :x: |   1.00 (1%)  |
| `["models", "hmm1", "inference_500"]`   | 0.91 (5%) :white_check_mark: |   1.00 (1%)  |
| `["models", "lgssm1", "creation_100"]`  |                1.11 (5%) :x: |   1.00 (1%)  |
| `["models", "lgssm1", "creation_500"]`  |                1.08 (5%) :x: |   1.00 (1%)  |
| `["models", "lgssm2", "creation_100"]`  |                1.08 (5%) :x: |   1.00 (1%)  |

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
  CPU: Intel(R) Xeon(R) Platinum 8171M CPU @ 2.60GHz: 
              speed         user         nice          sys         idle          irq
       #1  2095 MHz       3409 s          1 s        140 s       2102 s          0 s
       #2  2095 MHz        938 s          1 s        151 s       4576 s          0 s
       
  Memory: 6.790924072265625 GB (3495.640625 MB free)
  Uptime: 572.0 sec
  Load Avg:  1.0  0.88  0.47
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
  CPU: Intel(R) Xeon(R) Platinum 8171M CPU @ 2.60GHz: 
              speed         user         nice          sys         idle          irq
       #1  2095 MHz       3474 s          1 s        144 s       3884 s          0 s
       #2  2095 MHz       2732 s          1 s        162 s       4631 s          0 s
       
  Memory: 6.790924072265625 GB (3435.04296875 MB free)
  Uptime: 758.0 sec
  Load Avg:  1.0  0.94  0.57
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-11.0.1 (ORCJIT, skylake-avx512)
```

---
# Target result
# Benchmark Report for */home/runner/work/ReactiveMP.jl/ReactiveMP.jl/benchmark/../*

## Job Properties
* Time of benchmark: 20 Jul 2021 - 12:16
* Package commit: 3e3109
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

| ID                                      | time            | GC time   | memory          | allocations |
|-----------------------------------------|----------------:|----------:|----------------:|------------:|
| `["models", "hgf1", "creation"]`        |  55.500 μs (5%) |           |  38.78 KiB (1%) |         673 |
| `["models", "hgf1", "inference_100"]`   |  30.504 ms (5%) |           |  18.81 MiB (1%) |      308473 |
| `["models", "hgf1", "inference_1000"]`  | 343.097 ms (5%) | 40.728 ms | 187.02 MiB (1%) |     3067883 |
| `["models", "hgf1", "inference_500"]`   | 171.764 ms (5%) | 20.309 ms |  93.58 MiB (1%) |     1534880 |
| `["models", "hmm1", "creation_100"]`    |   2.510 ms (5%) |           |   1.43 MiB (1%) |       29834 |
| `["models", "hmm1", "creation_500"]`    |  13.399 ms (5%) |           |   7.10 MiB (1%) |      147840 |
| `["models", "hmm1", "inference_100"]`   |  55.035 ms (5%) |           |  34.22 MiB (1%) |      446012 |
| `["models", "hmm1", "inference_500"]`   | 442.704 ms (5%) | 90.817 ms | 170.54 MiB (1%) |     2222511 |
| `["models", "lgssm1", "creation_100"]`  |   1.835 ms (5%) |           | 968.92 KiB (1%) |       19127 |
| `["models", "lgssm1", "creation_500"]`  |   9.639 ms (5%) |           |   4.70 MiB (1%) |       95129 |
| `["models", "lgssm1", "inference_100"]` |   3.939 ms (5%) |           |   2.83 MiB (1%) |       44685 |
| `["models", "lgssm1", "inference_500"]` |  21.227 ms (5%) |           |  14.14 MiB (1%) |      223087 |
| `["models", "lgssm2", "creation_100"]`  |   2.636 ms (5%) |           |   1.40 MiB (1%) |       27676 |
| `["models", "lgssm2", "creation_500"]`  |  13.942 ms (5%) |           |   6.94 MiB (1%) |      137678 |
| `["models", "lgssm2", "inference_100"]` |   7.342 ms (5%) |           |   5.16 MiB (1%) |       76668 |
| `["models", "lgssm2", "inference_500"]` |  41.128 ms (5%) |           |  25.80 MiB (1%) |      383470 |

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
  CPU: Intel(R) Xeon(R) Platinum 8171M CPU @ 2.60GHz: 
              speed         user         nice          sys         idle          irq
       #1  2095 MHz       3409 s          1 s        140 s       2102 s          0 s
       #2  2095 MHz        938 s          1 s        151 s       4576 s          0 s
       
  Memory: 6.790924072265625 GB (3495.640625 MB free)
  Uptime: 572.0 sec
  Load Avg:  1.0  0.88  0.47
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-11.0.1 (ORCJIT, skylake-avx512)
```

---
# Baseline result
# Benchmark Report for */home/runner/work/ReactiveMP.jl/ReactiveMP.jl/benchmark/../*

## Job Properties
* Time of benchmark: 20 Jul 2021 - 12:19
* Package commit: 3e3109
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
| `["models", "hgf1", "creation"]`        |  50.000 μs (5%) |            |  38.78 KiB (1%) |         673 |
| `["models", "hgf1", "inference_100"]`   |  28.905 ms (5%) |            |  18.81 MiB (1%) |      308473 |
| `["models", "hgf1", "inference_1000"]`  | 332.746 ms (5%) |  41.484 ms | 187.02 MiB (1%) |     3067883 |
| `["models", "hgf1", "inference_500"]`   | 166.234 ms (5%) |  20.568 ms |  93.58 MiB (1%) |     1534880 |
| `["models", "hmm1", "creation_100"]`    |   2.276 ms (5%) |            |   1.43 MiB (1%) |       29834 |
| `["models", "hmm1", "creation_500"]`    |  12.132 ms (5%) |            |   7.10 MiB (1%) |      147840 |
| `["models", "hmm1", "inference_100"]`   |  56.511 ms (5%) |            |  34.22 MiB (1%) |      446012 |
| `["models", "hmm1", "inference_500"]`   | 484.505 ms (5%) | 112.811 ms | 170.54 MiB (1%) |     2222511 |
| `["models", "lgssm1", "creation_100"]`  |   1.660 ms (5%) |            | 968.92 KiB (1%) |       19127 |
| `["models", "lgssm1", "creation_500"]`  |   8.894 ms (5%) |            |   4.70 MiB (1%) |       95129 |
| `["models", "lgssm1", "inference_100"]` |   3.782 ms (5%) |            |   2.83 MiB (1%) |       44685 |
| `["models", "lgssm1", "inference_500"]` |  21.097 ms (5%) |            |  14.14 MiB (1%) |      223087 |
| `["models", "lgssm2", "creation_100"]`  |   2.445 ms (5%) |            |   1.40 MiB (1%) |       27676 |
| `["models", "lgssm2", "creation_500"]`  |  14.090 ms (5%) |            |   6.94 MiB (1%) |      137678 |
| `["models", "lgssm2", "inference_100"]` |   7.101 ms (5%) |            |   5.16 MiB (1%) |       76668 |
| `["models", "lgssm2", "inference_500"]` |  41.121 ms (5%) |            |  25.80 MiB (1%) |      383470 |

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
  CPU: Intel(R) Xeon(R) Platinum 8171M CPU @ 2.60GHz: 
              speed         user         nice          sys         idle          irq
       #1  2095 MHz       3474 s          1 s        144 s       3884 s          0 s
       #2  2095 MHz       2732 s          1 s        162 s       4631 s          0 s
       
  Memory: 6.790924072265625 GB (3435.04296875 MB free)
  Uptime: 758.0 sec
  Load Avg:  1.0  0.94  0.57
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
    Model name:                      Intel(R) Xeon(R) Platinum 8171M CPU @ 2.60GHz
    Stepping:                        4
    CPU MHz:                         2095.078
    BogoMIPS:                        4190.15
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
| Brand              | Intel(R) Xeon(R) Platinum 8171M CPU @ 2.60GHz           |
| Vendor             | :Intel                                                  |
| Architecture       | :Skylake                                                |
| Model              | Family: 0x06, Model: 0x55, Stepping: 0x04, Type: 0x00   |
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

