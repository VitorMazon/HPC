#!/bin/bash

rm flop
rm mflops.dat

gcc 1_flop.c -lm -o flop

for i in $(seq 1 10 100000); do
 	./flop $i >> mflops.dat
done

gnuplot i7.gp
