set terminal pdf enhanced font "Times New Roman"
set output "Clock_de_Sistema.pdf"
set xlabel "N"
set ylabel "MFlops/s"
set title "Cálculo de flops de processador"
unset key
plot "mflops.dat" u ($1):($2) w l
set output
