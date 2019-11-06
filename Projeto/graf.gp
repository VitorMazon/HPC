#set terminal pdf enhanced font "Times New Roman"
#set output "Saida.pdf"
set pm3d
#set xrange [0:21]
#set size square
splot "saida.dat" matrix
