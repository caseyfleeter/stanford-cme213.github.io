---
layout: page
title: CME 213 Course Schedule
description: Detailed class schedule
---

#### Monday, April 1
* Introduction to the class; syllabus.
* Homework, class material

#### Wednesday April 3
* Why we need parallelism; example of parallel program: summing up numbers
* Shared memory and multicore processors
* Introduction to Pthreads; creating and joining threads
* Pre-requisite homework out

#### Week 2 Monday April 8
* Example: multiplication of two matrices
* Mutexes; example: piazza restaurant delivery
* Condition variables; example with codes

#### Wednesday April 10
* OpenMP; introduction; parallel regions
* Parallel for loops; matrix multiplication; sections; tasks; taskwait; using tasks for tree traversal and list traversal
* Pre-requisite homework due
* Homework 1 out

#### Week 3 Monday April 15
* OpenMP wrap-up: reduction, atomic, critical, single; master; barrier, etc.

#### Wednesday April 17
* Colfax lecture 1

#### Friday April 19
* Colfax lecture 2
* Homework 2 out

#### Week 4 Monday April 22
* CUDA introduction; moving data between CPU and GPU memory; execution of a skeleton CUDA code (malloc, memcpy, kernel); threading model, basic commands, simple example programs
* Homework 1 due

#### Wednesday April 24
* Threads, warps, blocks; execution model for a kernel; resident blocks; executing an instruction for a warp; synchronizations between threads; SIMT model
* Execution model for a kernel; resident blocks; resources required by a grid block; resources available on an SM; memory and caches; occupancy
* Warps; coalescing and performance impact; memory access pattern; caching

#### Week 5 Monday April 29
* Example of matrix transpose
* Shared memory; bank conflicts

#### Wednesday May 1
* Lecture on homework 3; finite-difference stencil; algorithm based on global memory; loop over y to increase data-reuse and arithmetic intensity; shared memory algorithm
* Homework 2 due
* Homework 3 out

#### Week 6 Monday May 6
* Students were asked to group in team and find an efficient procedure to quickly calculate the cumulative sum of many numbers.
* Reduction algorithm; warp; shared memory; thread divergence; bank conflict; thread-block; use of atomics. 

#### Wednesday May 8
* Discussion of Thrust; segmented algorithms; examples of problems that can be broken into Thrust algorithms; lambda functions and placeholders
* Homework 3 due
* Homework 4 out

#### Friday May 10
* Lecture on the final project
* Final project out; neural network for digit recognition

#### Week 7 Monday May 13
* OpenACC, NVIDIA

#### Wednesday May 15
* CUDA optimization, flops and mems, NVIDIA

#### Week 8 Monday May 20
* CUDA profiling, nvvp, optimization guidelines, NVIDIA

#### Wednesday May 22
* Message passing; introduction; MPI; collective communications; collective communications for final project
* Homework 4 due

#### Friday May 24
* Point-to-point communication; Deadlocks; ring communication; blocking vs. non-blocking; sample sort

#### Week 9 Monday May 27
* Memorial Day; no class

#### Wednesday May 29
* Matrix-vector product; groups, communicators
* Cartesian topologies; application to matrix-vector products with 2D partitioning
* Communications using graph topologies; graph; neighbor_all_to_all comms; FEM applications

#### Friday May 31
* One-page interim report due

#### Week 10 Monday June 3
* Performance metrics; speed-up, efficiency; Amdahl’s law; example: dot-product; efficiency and isoefficiency

#### Wednesday June 5
* Alphago, board games, deep learning, and Monte-Carlo tree searches; algorithm and implementation
* Matrix-vector product with 1D and 2D partitioning; matrix-matrix products; Cannon and DNS algorithms; LU factorization algorithms
* Conclusion, and wrap-up

#### Sunday June 9
* Projects are due, deadline: 11PM
* Final exam schedule: Friday June 8 3:30–6:30 PM

