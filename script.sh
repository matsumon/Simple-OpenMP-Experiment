#!/bin/bash
#number of threads:
for  t  in  1 2 4 6 8
do
    echo NUMT = $t
    # number of subdivisions:
    for s in  2  4  8  16  32  64  128  256  512  1024  2048  3072  4096
    do
        echo NUMS = $s
        g++   -DNUMS=$s   -DNUMT=$t   prog.cpp  -o prog -lm  -fopenmp./prog
    done
done