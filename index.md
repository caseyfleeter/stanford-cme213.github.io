---
layout: default
title: "CME 213: Introduction to Parallel Computing using MPI, openMP, and CUDA"
---

Welcome to CME 213!

This class will give hands on experience with programming multicore processors, graphics processing units (GPU), and parallel computers. Focus will be on the message passing interface (MPI, parallel clusters) and the compute unified device architecture (CUDA, GPU).  

Topics will include: network topologies, modeling communication times, collective communication operations, parallel efficiency, MPI, dense linear algebra using MPI. Symmetric multiprocessing (SMP), Pthreads, openMP. CUDA, combining MPI and CUDA, dense linear algebra using CUDA, sort, reduce and scan using CUDA.

Pre-requisites include: C programming language and numerical algorithms (solution of differential equations, linear algebra, Fourier transforms).

### Basic Info

* Location: [Building 300, Room 300](http://campus-map.stanford.edu/?id=300-300)  
* Lectures: Mon/Wed/Fri 3:00-4:20PM
* Instructor: [Eric Darve](https://me.stanford.edu/people/eric-darve)  
* Course Assistants: William Jen, [Chenzhuo Zhu](http://stanford.edu/~czhu95/)
* [Syllabus](CME 213 Syllabus.pdf)

### Office Hours

* Monday 7-9PM; TA led; Huang basement
* Tuesday 7-9PM; TA led; Huang basement
* Friday 9-11AM; Instructor; bldg 520, room 125

### Homework

* [Homework 1](Homework/hw1.pdf) and [starter code](Homework/code_hw1.zip)
* [Homework 2](Homework/hw2.pdf), [Radix Sort Tutorial](Homework/RadixSortTutorial.pdf), and [starter code](Homework/code_hw2.zip)
* [Homework 3](Homework/hw3.pdf) and [starter code](Homework/code_hw3.zip)
* [Homework 4](Homework/hw4.pdf) and [starter code](Homework/code_hw4.zip)
* [Homework 5](Homework/hw5.pdf) and [starter code](Homework/code_hw5.zip)
* [Final Project Part 1](Homework/FinalProjectPart1.pdf)
* [Final Project Part 2](Homework/FinalProjectPart2.pdf) and [starter code](Homework/code_project.zip)

### Google Cloud Platform 
* [MPI 8 vCPUs](Code/create_vm_mpi_8.sh)
* [Hw3 VM script](Code/create_vm_hw3.sh)
* [OpenMP VM script](Code/create_vm_openmp.sh)
* [Google Cloud Platform setup instructions](./gcp.html)
* [VM instances information page](https://console.cloud.google.com/compute)
* [Billing page](https://console.cloud.google.com/billing)
* [GCP dashboard](https://console.cloud.google.com/home)

### Lecture notes

* [Introduction and syllabus](Lecture Notes/Lecture_01.pdf)
* [Parallel computing, threads](Lecture Notes/Lecture_02.pdf)
* [Race condition, mutex](Lecture Notes/Lecture_03.pdf)
* [OpenMP, for loops](Lecture Notes/Lecture_04.pdf)
* [OpenMP, reduction](Lecture Notes/Lecture_05.pdf)
* [OpenMP, sort](Lecture Notes/Lecture_06.pdf)
* [CUDA, introduction](Lecture Notes/Lecture_07.pdf)
* [CUDA, device memory](Lecture Notes/Lecture_08.pdf)
* [CUDA, matrix transpose](Lecture Notes/Lecture_09.pdf)
* [CUDA, homework 4, finite-difference](Lecture Notes/Lecture_10.pdf)
* [CUDA, team activity, reduction](Lecture Notes/Lecture_11.pdf)
* [CUDA, Thrust](Lecture Notes/Lecture_12.pdf)
* [Final project](Lecture Notes/Lecture_13.pdf)
* [NVIDIA OpenACC](Lecture Notes/Lecture_14_NVIDIA_OpenACC.pdf)
* [NVIDIA Optimizations](Lecture Notes/Lecture_15_CUDA_Optimization.pdf)
* [NVIDIA Profiler NVVP](Lecture Notes/Lecture_16_Profiler_Optimizing_GPU.pdf)
* [MPI basics, collective communication](Lecture Notes/Lecture_17.pdf)
* [MPI point-to-point communication](Lecture Notes/Lecture_18.pdf)

### Computer code

* [MPI](Code/mpi.zip)
* [Thrust](Code/thrust.zip)
* [generate_sequence](Code/generate_sequence.cpp)
* [CUDA 1](Code/cuda1.zip)
* [CUDA 2](Code/cuda2.zip)
* [CUDA 3, reduction](Code/cuda3.zip)
* [OpenMP sort](Code/sort.zip)
* [OpenMP reduction](Code/omp2.zip)
* [OpenMP intro](Code/omp1.zip)
* [Mutex](Code/mutex.zip)
* [Threads](Code/pthread.zip)
* [C++ standard library and lambda functions](Code/ex1_transform.cpp), and [solution](Code/ex1_transform_solution.cpp) 

### Reading and links

* [OpenACC](https://www.openacc.org/)
* [Compilers that support OpenACC](https://www.openacc.org/tools)
* [OpenACC Specification (ver. 2.7 November 2018)](https://www.openacc.org/sites/default/files/inline-files/OpenACC.2.6.final.pdf)
* [OpenACC Programming and Best Practices Guide](http://www.openacc.org/sites/default/files/OpenACC_Programming_Guide_0.pdf)
* [OpenACC 2.7 API Reference Card](https://www.pgroup.com/lit/literature/openacc-api-guide-2.7.pdf)
* [Thrust programming guide](https://docs.nvidia.com/cuda/thrust/index.html)
* [Thrust examples](https://github.com/thrust/thrust/tree/master/examples)
* [Thrust download page](https://developer.nvidia.com/thrust)
* [Thrust github page](https://thrust.github.io/)
* [Thrust get started guide](https://github.com/thrust/thrust/wiki/Quick-Start-Guide)
* [Presentations and slides on Thrust](https://github.com/thrust/thrust/downloads)
* [CUDA occupancy calculator](Reading/CUDA_Occupancy_Calculator.xls)
* [Kepler GK110/210 whitepaper](Reading/NVIDIA_Kepler_GK110_GK210_Architecture_Whitepaper.pdf) (the K80 uses the GK210 chip)
* [Data sheet for Tesla GPUs](https://en.wikipedia.org/wiki/Nvidia_Tesla). **Tesla** is NVIDIA's brand name for their products targeting stream processing or general-purpose graphics processing units (GPGPU).
* [K80 device info](k80.md)
* [K80 data sheet](https://www.nvidia.com/content/dam/en-zz/Solutions/Data-Center/tesla-product-literature/TeslaK80-datasheet.pdf)
* [CUDA Programming Guides and References](http://docs.nvidia.com/cuda/index.html)
* [CUDA C Programming Guide](http://docs.nvidia.com/cuda/pdf/CUDA_C_Programming_Guide.pdf)
* [CUDA C Best Practices Guide](http://docs.nvidia.com/cuda/pdf/CUDA_C_Best_Practices_Guide.pdf)
* [CUDA compiler](https://docs.nvidia.com/cuda/pdf/CUDA_Compiler_Driver_NVCC.pdf)
* [A novel sorting algorithm for many-core architectures based on adaptive bitonic sort](https://ieeexplore.ieee.org/abstract/document/6267838)
* [Adaptive Bitonic Sorting](https://pdfs.semanticscholar.org/bcdf/c4e40c79547c9daf89dada4e1c23056871cb.pdf)
* [OpenMP API Syntax Reference Guide](https://www.openmp.org/wp-content/uploads/OpenMPRef-5.0-111802-web.pdf)
* [C++ threads](http://www.cplusplus.com/reference/thread/thread/)
* [Simple examples of C++ multithreading](https://www.geeksforgeeks.org/multithreading-in-cpp/)
* [LLNL tutorial on Pthreads](https://computing.llnl.gov/tutorials/pthreads/)
* [C++ reference](https://en.cppreference.com/w/cpp)

### Tutorial notes

* [C++ Refresher Session](Tutorial Notes/Tutorial_01.pdf) and [code](Tutorial Notes/code.zip)
* [CUDA Profiling Session](Tutorial Notes/Tutorial_02.pdf) and [code](Code/cuda3.zip)

### Course Schedule

Schedules are tentative and will be updated throughout the quarter.

[See detailed schedule](./schedule.html)

| Week          | Date                 | Topics                             | Homework/Project                            |
| :-----------: | -------------------- | ---------------------------------- | --------------------------                  |
| 1             | Mon, April 1         | Introduction and syllabus          |                                             |
| 1             | Wed, April 3         | Parallelism, Pthreads              | HW1 out                                     |
| 2             | Mon, April 8         | Synchronization                    |                                             |
| 2             | Wed, April 10        | OpenMP 1: For loops                | HW1 due <br> HW2 out                        |
| 3             | Mon, April 15        | OpenMP 2: Reduction                |                                             |
| 3             | Wed, April 17        | OpenMP 3: Shared memory sorting    |                                             |
| 4             | Mon, April 22        | CUDA 1                             | HW2 due                                     |
| 4             | Wed, April 24        | CUDA 2                             | HW3 out                                     |
| 5             | Mon, April 29        | CUDA 3, matrix transpose           |                                             |
| 5             | Wed, May 1           | Lecture on homework 4              | HW4 out <br> HW3 due                        |
| 6             | Mon, May 6           | Reduction                          |                                             |
| 6             | Wed, May 8           | Thrust                             |                                             |
| 6             | Fri, May 10          | Lecture on final project           | HW5 out <br> HW4 due <br> Final project out |
| 7             | Mon, May 13          | OpenACC by NVIDIA                  |                                             |
| 7             | Wed, May 15          | CUDA optimization by NVIDIA        |                                             |
| 8             | Mon, May 20          | NVVP by NVIDIA                     |                                             |
| 8             | Wed, May 22          | Point-to-point communication       | HW5 due                                     |
| 9             | Mon, May 27          | ---Memorial Day---                 |                                             |
| 9             | Wed, May 29          | Groups, communicators and topology |                                             |
| 9             | Fri, May 31          | -                                  | Project interim report due                  |
| 10            | Mon, June 3          | Parallel efficiency                |                                             |
| 10            | Wed, June 5          | AlphaGo                            |                                             |
| 10            | Sun, June 9          | -                                  | Final project due                           |
