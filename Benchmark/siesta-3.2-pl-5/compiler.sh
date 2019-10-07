#!/bin/bash

# =====================================================================================================
#  Script para modificar arch.make e complilar o programa com diferentes flags com compilador gfortran
# =====================================================================================================
#
# v=2.0
#
# Autor = VitorMazon

# verificar se pasta /bin existe na home e a cria se não existir
# /bin usado para deixar os compilados do siesta

DIRECTORY='~/bin'

if [ ! -d "$DIRECTORY" ]; then
  mkdir ~/bin
fi

#==============================================
#=================== GNU ======================
#==============================================

# ================ SEM FLAGS ====================
mkdir Obj-gf
cd Obj-gf
 sh ../Src/obj_setup.sh
 cp ../Basis/gf.make .
 for i in 0 1 2 3
  do
   sed "s/XYX/-O$i/g" gf.make > arch.make
   make -j4
   cp siesta siesta-gf-$i.x
   mv siesta-gf-$i.x ~/bin
   make clean
   mv arch.make arch-gf-$i
 done
cd ..

#============ FLAGS NORMAIS ========================== 
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

#=========== FLAGS DE PROCESSADOR =====================
mkdir Obj-gf-native
cd Obj-gf-native
 sh ../Src/obj_setup.sh
 cp ../Basis/gf-native.make .
 for i in 0 1 2 3
  do
   sed "s/XYX/-O$i/g" gf-native.make > arch.make
   make -j4
   cp siesta siesta-gf-native-$i.x
   mv siesta-gf-native-$i.x ~/bin
   make clean
   mv arch.make arch-gf-native-$i
 done
cd ..

#==============================================
#================= INTEL ======================
#==============================================


#============INTEL SEM FLAGS==================

mkdir Obj-intel
cd Obj-intel
 sh ../Src/obj_setup.sh
 cp ../Basis/intel.make .
 
 for i in 0 1 2 3
  do
   sed "s/XYX/-O$i/g" intel.make > arch.make
   make -j4
   cp siesta siesta-intel-$i.x
   mv siesta-intel-$i.x ~/bin
   make clean
   mv arch.make arch-intel-$i
 done
cd ..

#============INTEL COM FLAGS E MKL===================

mkdir Obj-intel-mkl
cd Obj-intel-mkl
 sh ../Src/obj_setup.sh
 cp ../Basis/intel-mkl.make .
 
 for i in 0 1 2 3
  do
   sed "s/ XYX/ -O$i/g" intel-mkl.make > arch.make
   make
   cp siesta siesta-intel-mkl-$i.x
   mv siesta-intel-mkl-$i.x ~/bin
   make clean
   mv arch.make arch-intel-mkl-$i
 done
cd ..
