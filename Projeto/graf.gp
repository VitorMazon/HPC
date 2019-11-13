set terminal png enhanced font "Times New Roman"
set pm3d map
set size square

set output "Relaxacao.pdf"
splot "teste_relax.dat" matrix
set output

set output "Relaxacao_Mascara.pdf"
splot "teste_mascara.dat" matrix
set output
