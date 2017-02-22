reset
set terminal epslatex color colortext
set output 'introduction.tex'

set key out horiz bot cente
set grid y
set style line 1 lc rgb '#0060ad' lt 1 lw 2 pt 7 ps 1.5   # --- blue
set style line 2 lc rgb '#808080' lt 1
set style line 3 lc rgb '#808080' lt 0 lw 1
set border 3 back ls 2

set grid back ls 3

set xlabel 'x axis label'
set ylabel 'y axis label'

set title 'Title'

plot 'HarmonyCost.dat' with linespoints ls 1 

set output 