#!/bin/bash

gcc -pg -lm -g relax.c -o profiling_rl.out
./profiling_rl.out > aux1.dat
gprof profiling_rl.out gmon.out > profiling_1.dat

rm profiling_rl.out aux1.dat gmon.out

#mv gmon.out gmon1.out
#
#gcc -pg -O2 -lm -g relax.c -o profiling2_rl.out
#./profiling2_rl.out > aux2.dat
#gprof profiling2_rl.out gmon.out > profiling_2.dat
#
#mv gmon.out gmon2.out
