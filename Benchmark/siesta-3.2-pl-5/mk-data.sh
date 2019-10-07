#!/bin/bash

# =======================================================================
#   Script para rodar siesta e criar um aquivo com o  tempo de execucao
# =======================================================================
# Obs.: O executável do siesta deve estar na pasta bin para ser executato neste script

cd Obj-COMP/Tests/benzene/
make
cd work
cp ../../../../Tests/benzene/work/benzene.fdf .

for i in 0 1 2 3
 do
  siesta-COMP-$i.x < benzene.fdf > saida.out
  rm *.DM *.XV *.CG
  tempo=$(grep 'timer:  siesta' saida.out | awk '{printf("%.3f", $5)}')
  echo $i '  ' $tempo >> COMP-tempo.dat
  mv saida.out siesta-COMP-$i.out
done

mv COMP-tempo.dat ../../../../time
cd ../../../../
