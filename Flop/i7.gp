set terminal pdf enhanced font "Times New Roman"
set output "Clock_de_Sistema-UFF.pdf"
set xlabel "N"
set ylabel "MFlops/s"
set log x
set title "Intel^{R} Core^{TM} i7-2600 (3.40GHz)"
unset key
plot "mflops.dat" u ($1):($2) w l
set output
