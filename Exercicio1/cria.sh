#!/bin/bash
#
# Author: Vitor Mazon
#

dir=20
arq=10

for i in $(seq 1 1 $dir); do
 mkdir exe-$i
 cd exe-$i
 
 for j in $(seq 1 1 $arq); do
  touch problema-$j
 done
 
 cd ../
done

  
