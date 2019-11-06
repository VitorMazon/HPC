#!/bin/bash

mkdir Obj-gf-flags
cd Obj-gf-flags
 sh ../Src/obj_setup.sh
 cp ../Basis/gf-flags.make .
 for i in 0 1 2 3
  do
   sed "s/XYX/-O$i/g" gf-flags.make > arch.make
   make -j4
   cp siesta siesta-gf-flags-$i.x
   mv siesta-gf-flags-$i.x ~/bin
   make clean
   mv arch.make arch-gf-flags-$i
 done
cd ..

sed "s/COMP/gf-flags/g" mk-data.sh > temp.sh
chmod +x temp.sh
sh temp.sh
rm temp.sh
