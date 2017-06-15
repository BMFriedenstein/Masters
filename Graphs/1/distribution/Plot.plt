reset
set terminal wxt size 600,262 enhanced font 'Verdana,10' persist
#set terminal epslatex color colortext
#set output 'distribution.tex'


my_line_width = "2"
my_axis_width = "1.5"
my_ps = "1.2"
grid_color = "#d5e0c9"
text_color = "#000000"
set xtics format ""

set border 31 lw @my_axis_width lc rgb text_color
set key out horiz bot center
set grid lc rgb grid_color
set yrange [0:100]
unset key
set style data histogram
set style histogram cluster gap 1
set style fill solid
set size 1.3,0.7
set boxwidth 0.5
set style fill solid
plot "dat.txt" using 2:xtic(3) with boxes
