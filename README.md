# Simple-OpenMP-Experiment
Introduction

A great use for parallel programming is identical operations on large arrays of numbers.

Requirements

    Pick an array size to do the arithmetic on. Something like 16384 (16K) will do. Don't pick something too huge, as your machine may not allow you to use that much memory. Don't pick something too small, as the overhead of using threading might dominate the parallelism gains.

    Using OpenMP, pairwise multiply two large floating-point arrays, putting the results in another array. Do this in a for-loop.
    C[ i ] = A[ i ] * B[ i ];

    Do this for one thread and do this for four threads:
    #define NUMT 1
    and
    #define NUMT 4

    Time the two runs. Convert the timing results into "Mega-Multiplies per Second".

    What speedup, S, are you seeing when you move from 1 thread to 4 threads?
    S = (Execution time with one thread) / (Execution time with four threads) = (Performance with four threads) / (Performance with one thread)
    This number should be greater than 1.0 . If not, be sure you are using the correct numerator and denominator.

    If your 1-thread-to-4-threads speedup is S, compute the parallel fraction:

    float Fp = (4./3.)*( 1. - (1./S) );

    Don't worry what this means just yet. This will become more meaningful soon.
    You must have used 1-thread-to-4-threads. The numbers in this equation depend on that. 
