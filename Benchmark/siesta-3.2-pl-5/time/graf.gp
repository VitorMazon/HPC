set terminal png enhanced size 1024,768 font "Times New Roman"
set xlabel "Otimização"
set ylabel "Tempo (s)"
set xtics 1
set sample 1000

set output "Teste.png"
test
set output

set output "Benchmark-f90.png"
set title "Execução siesta com GNU"
plot "gf-tempo.dat" w lp pt 5 lc 1 lw 2 t "sem flags", "gf-flags-tempo.dat" w lp pt 7 lc 2 lw 2 t "com flags", "gf-native-tempo.dat" w lp pt 3 lc 3 lw 2 t "flags nativas"
set output

set output "Benchmark-intel.png"
set title "Execução siesta com ifort (mkl)"
plot "intel-tempo.dat" w lp pt 5 lc 13 lw 2 t "sem flags", "intel-mkl-tempo.dat" w lp pt 9 lc 4 lw 2 t "com flags"
set output

set output "Benchmark-flags.png"
set title "Execução siesta com flags"
plot "gf-flags-tempo.dat" w lp pt 7 lc 2 lw 2 t "gfortran flags", "gf-native-tempo.dat" w lp pt 11 lc 3 lw 2 t "gfortran nativo", "intel-mkl-tempo.dat" w lp pt 9 lc 4 lw 2 t "ifort flags"
set output

#============== EFICIENCIA ===================
set ylabel "Eficiência (η)"

set output "Eficiencia-gnu.png"
set title "Eficiência do GNU"
plot "gf-tempo.dat" u ($1):((1-$2/986.757)*100) w lp pt 5 lc 1 lw 2 t "sem flags", "gf-flags-tempo.dat" u ($1):((1-$2/1076.086)*100) w lp pt 7 lc 2 lw 2 t "com flags", "gf-native-tempo.dat" u ($1):((1-$2/1061.084)*100) w lp pt 11 lc 3 lw 2 t "flags nativas"
set output

set output "Eficiencia-intel.png"
set title "Eficiência ifort"
plot "intel-tempo.dat" u ($1):((1-$2/1654.949)*100) w lp pt 5 lc 13 lw 2 t "sem flags", "intel-mkl-tempo.dat" u ($1):((1-$2/1658.207)*100) w lp pt 9 lc 4 lw 2 t "com flags"
set output
