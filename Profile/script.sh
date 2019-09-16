#!/bin/bash

#rm temp.dat

for j in 0 1 2 3; do
  for i in $(seq 1 5); do 
    gcc -O$j -lm relax.c -o rl
    ./rl 1e-1 > sol.dat
    gnuplot map.gp
    tempo=$(grep 'tempo = ' sol.dat | cut -d = -f 2)
    echo $i '  ' $tempo >> temp2.dat
  done
done
