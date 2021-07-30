# Benchmark result (via Travis)


# Judge result
# Benchmark Report for */home/runner/work/ReactiveMP.jl/ReactiveMP.jl/benchmark/../*

## Job Properties
* Time of benchmarks:
    - Target: 30 Jul 2021 - 10:59
    - Baseline: 30 Jul 2021 - 11:02
* Package commits:
    - Target: 902dc7
    - Baseline: f8ac3f
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

| ID                                      | time ratio    | memory ratio |
|-----------------------------------------|---------------|--------------|
| `["models", "hgf1", "creation"]`        | 1.07 (5%) :x: |   1.00 (1%)  |

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
  uname: Linux 5.8.0-1039-azure #42~20.04.1-Ubuntu SMP Thu Jul 15 14:11:07 UTC 2021 x86_64 x86_64
  CPU: Intel(R) Xeon(R) Platinum 8272CL CPU @ 2.60GHz: 
              speed         user         nice          sys         idle          irq
       #1  2593 MHz       2081 s          1 s        200 s       4301 s          0 s
       #2  2593 MHz       4554 s          1 s        226 s       1833 s          0 s
       
  Memory: 6.790924072265625 GB (2734.578125 MB free)
  Uptime: 664.0 sec
  Load Avg:  1.01  1.24  0.79
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
  uname: Linux 5.8.0-1039-azure #42~20.04.1-Ubuntu SMP Thu Jul 15 14:11:07 UTC 2021 x86_64 x86_64
  CPU: Intel(R) Xeon(R) Platinum 8272CL CPU @ 2.60GHz: 
              speed         user         nice          sys         idle          irq
       #1  2593 MHz       3657 s          1 s        209 s       4345 s          0 s
       #2  2593 MHz       4602 s          1 s        229 s       3405 s          0 s
       
  Memory: 6.790924072265625 GB (2726.703125 MB free)
  Uptime: 827.0 sec
  Load Avg:  1.06  1.16  0.85
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-11.0.1 (ORCJIT, skylake-avx512)
```

---
# Target result
# Benchmark Report for */home/runner/work/ReactiveMP.jl/ReactiveMP.jl/benchmark/../*

## Job Properties
* Time of benchmark: 30 Jul 2021 - 10:59
* Package commit: 902dc7
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
| `["models", "hgf1", "creation"]`        |  43.601 μs (5%) |            |  38.78 KiB (1%) |         673 |
| `["models", "hgf1", "inference_100"]`   |  23.910 ms (5%) |            |  18.06 MiB (1%) |      308301 |
| `["models", "hgf1", "inference_1000"]`  | 278.233 ms (5%) |  41.025 ms | 179.68 MiB (1%) |     3067711 |
| `["models", "hgf1", "inference_500"]`   | 138.187 ms (5%) |  20.026 ms |  89.89 MiB (1%) |     1534708 |
| `["models", "hmm1", "creation_100"]`    |   2.147 ms (5%) |            |   1.43 MiB (1%) |       29834 |
| `["models", "hmm1", "creation_500"]`    |  10.758 ms (5%) |            |   7.10 MiB (1%) |      147840 |
| `["models", "hmm1", "inference_100"]`   |  78.581 ms (5%) |            |  38.54 MiB (1%) |      592400 |
| `["models", "hmm1", "inference_500"]`   | 577.274 ms (5%) | 105.736 ms | 192.32 MiB (1%) |     2958899 |
| `["models", "lgssm1", "creation_100"]`  |   1.394 ms (5%) |            | 968.92 KiB (1%) |       19127 |
| `["models", "lgssm1", "creation_500"]`  |   7.444 ms (5%) |            |   4.70 MiB (1%) |       95129 |
| `["models", "lgssm1", "inference_100"]` |   3.101 ms (5%) |            |   2.48 MiB (1%) |       41685 |
| `["models", "lgssm1", "inference_500"]` |  16.993 ms (5%) |            |  12.37 MiB (1%) |      208087 |
| `["models", "lgssm2", "creation_100"]`  |   2.182 ms (5%) |            |   1.40 MiB (1%) |       27676 |
| `["models", "lgssm2", "creation_500"]`  |  11.134 ms (5%) |            |   6.94 MiB (1%) |      137678 |
| `["models", "lgssm2", "inference_100"]` |   5.899 ms (5%) |            |   4.57 MiB (1%) |       71678 |
| `["models", "lgssm2", "inference_500"]` |  33.302 ms (5%) |            |  22.86 MiB (1%) |      358480 |

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
  uname: Linux 5.8.0-1039-azure #42~20.04.1-Ubuntu SMP Thu Jul 15 14:11:07 UTC 2021 x86_64 x86_64
  CPU: Intel(R) Xeon(R) Platinum 8272CL CPU @ 2.60GHz: 
              speed         user         nice          sys         idle          irq
       #1  2593 MHz       2081 s          1 s        200 s       4301 s          0 s
       #2  2593 MHz       4554 s          1 s        226 s       1833 s          0 s
       
  Memory: 6.790924072265625 GB (2734.578125 MB free)
  Uptime: 664.0 sec
  Load Avg:  1.01  1.24  0.79
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-11.0.1 (ORCJIT, skylake-avx512)
```

---
# Baseline result
# Benchmark Report for */home/runner/work/ReactiveMP.jl/ReactiveMP.jl/benchmark/../*

## Job Properties
* Time of benchmark: 30 Jul 2021 - 11:2
* Package commit: f8ac3f
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
| `["models", "hgf1", "creation"]`        |  40.700 μs (5%) |            |  38.78 KiB (1%) |         673 |
| `["models", "hgf1", "inference_100"]`   |  24.049 ms (5%) |            |  18.06 MiB (1%) |      308301 |
| `["models", "hgf1", "inference_1000"]`  | 279.521 ms (5%) |  41.202 ms | 179.68 MiB (1%) |     3067711 |
| `["models", "hgf1", "inference_500"]`   | 139.858 ms (5%) |  20.284 ms |  89.89 MiB (1%) |     1534708 |
| `["models", "hmm1", "creation_100"]`    |   2.051 ms (5%) |            |   1.43 MiB (1%) |       29834 |
| `["models", "hmm1", "creation_500"]`    |  10.577 ms (5%) |            |   7.10 MiB (1%) |      147840 |
| `["models", "hmm1", "inference_100"]`   |  79.845 ms (5%) |            |  38.54 MiB (1%) |      592400 |
| `["models", "hmm1", "inference_500"]`   | 568.695 ms (5%) | 113.047 ms | 192.32 MiB (1%) |     2958899 |
| `["models", "lgssm1", "creation_100"]`  |   1.455 ms (5%) |            | 968.92 KiB (1%) |       19127 |
| `["models", "lgssm1", "creation_500"]`  |   7.533 ms (5%) |            |   4.70 MiB (1%) |       95129 |
| `["models", "lgssm1", "inference_100"]` |   3.130 ms (5%) |            |   2.48 MiB (1%) |       41685 |
| `["models", "lgssm1", "inference_500"]` |  16.457 ms (5%) |            |  12.37 MiB (1%) |      208087 |
| `["models", "lgssm2", "creation_100"]`  |   2.144 ms (5%) |            |   1.40 MiB (1%) |       27676 |
| `["models", "lgssm2", "creation_500"]`  |  11.197 ms (5%) |            |   6.94 MiB (1%) |      137678 |
| `["models", "lgssm2", "inference_100"]` |   6.005 ms (5%) |            |   4.57 MiB (1%) |       71678 |
| `["models", "lgssm2", "inference_500"]` |  32.435 ms (5%) |            |  22.86 MiB (1%) |      358480 |

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
  uname: Linux 5.8.0-1039-azure #42~20.04.1-Ubuntu SMP Thu Jul 15 14:11:07 UTC 2021 x86_64 x86_64
  CPU: Intel(R) Xeon(R) Platinum 8272CL CPU @ 2.60GHz: 
              speed         user         nice          sys         idle          irq
       #1  2593 MHz       3657 s          1 s        209 s       4345 s          0 s
       #2  2593 MHz       4602 s          1 s        229 s       3405 s          0 s
       
  Memory: 6.790924072265625 GB (2726.703125 MB free)
  Uptime: 827.0 sec
  Load Avg:  1.06  1.16  0.85
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
    CPU MHz:                         2593.904
    BogoMIPS:                        5187.80
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

