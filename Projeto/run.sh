#!/bin/bash
#
#  author:VitorMazon
#  email:vitormazon@id.uff.br
#
#  https://github.com/VitorMazon/HPC/Projeto.git


#---------------------------------------
#----------- Compilação ----------------
#---------------------------------------
gcc -lm relax.c -o rl.out
gcc -lm relax_mascara.c -o mascara.out


#---------------------------------------
#------------- Rodando -----------------
#---------------------------------------
chmod +x *.out
./rl.out 0.001 > teste_relax.dat
./mascara.out 0.001 > teste_mascara.dat


#---------------------------------------
#------------ Gráficos -----------------
#---------------------------------------
gnuplot graf.gp
