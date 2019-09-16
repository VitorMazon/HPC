#!/bin/bash
#
# Author: VitorMazon
#

cd cutoff/

for i in $(seq 50 50 500); do
 Ene=$(grep "Total =" tube-$i.out | cut -d = -f2)
 echo $i'	'$Ene >> ecutoff.dat
done

cd ../kpoint/

for i in $(seq 4 24); do
 Ene=$(grep "Total =" tube-$i.out | cut -d = -f2)
 echo $i'       '$Ene >> ekpoint.dat
done

cd ../lattice

for i in $(seq 25 5 80); do
 Ene=$(grep "Total =" outputLatticeOpt-2.$i.out | cut -d = -f2)
 echo $i'	'$Ene >> elattice.dat
done

cd ../

#graficos
mv cutoff/ecutoff.dat .
mv kpoint/ekpoint.dat .
mv lattice/elattice.dat .
gnuplot graf.gp

mkdir Resultados/
cp *.dat *.png Resultados/

mv cut.png cutoff/.
mv kp.png kpoint/.
mv lat.png lattice/.
