#!/bin/bash
#
#  Rotina para compilação do código de relaxação
#  
#  Author:VitorMazon
#  

echo Definir erro:
read err

gcc -lm relax.c -o rl.out
./rl.out $err > saida.dat

#gcc -lm relax_mascara.c -o mask.out
#./mark.out $err

gnuplot graf.gp
