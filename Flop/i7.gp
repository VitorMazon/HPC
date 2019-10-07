set terminal pdf enhanced font "Times New Roman"
set output "Clock_de_Sistema.pdf"
set xlabel "N"
set ylabel "MFlops/s"
set log x
set title "Intel^{R} Core^{TM} i3-4030U (3M Cache, 1.90GHz)"
unset key
plot "mflops.dat" u ($1):($2) w l
set output
