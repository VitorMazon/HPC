set terminal png enhanced
set output "cut.png"
unset key
set title "Padrão de Energia"
set xlabel "cutoff"
set ylabel "E [eV]"
plot 'ecutoff.dat' w lp pt 7 lt rgb "red"
set output

set output "kp.png"
set title "Padrão de Energia"
set xlabel "kpoint"
set ylabel "E [eV]"
plot 'ekpoint.dat' w lp pt 7 lt rgb "red"
set output

set output "lat.png"
set xlabel "lattice"
plot 'elattice.dat' w lp pt 7 lt rgb "red"
set output
