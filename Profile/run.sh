#!/bin/bash


gcc -O2 -lm relax.c -o rl
./rl 1e-1 > sol.dat
gnuplot map.gp

