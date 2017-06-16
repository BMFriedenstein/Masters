reset
set terminal wxt size 600,262 enhanced font 'Verdana,10' persist
set terminal epslatex color colortext
set output 'distribution.tex'


my_line_width = "2"
my_axis_width = "1.5"
my_ps = "1.2"
grid_color = "#d5e0c9"
text_color = "#000000"

set border 31 lw @my_axis_width lc rgb text_color
set key out horiz bot center
set grid lc rgb grid_color
set yrange [0:25]
unset key
set size 1.3,0.7
set boxwidth 0.3
set style fill solid

set style line 1 lc rgb "#285EA6"
set style line 2 lc rgb "#D99694"
set style line 3 lc rgb "#9DBB61"
set style line 4 lc rgb "#98D0DE"
set style line 5 lc rgb "#A6A6A6"
set style line 6 lc rgb "#9B9B4F"
set style line 7 lc rgb "#BFB1CF"
set style line 8 lc rgb "#FAC090"
set xrange [0.5:8.5]
set ylabel '\% of total energy consumption'

plot "dat.txt" every ::0::0 using 1:3:xtic(2) with boxes ls 1, \
	 "dat.txt" every ::1::1 using 1:3:xtic(2) with boxes ls 2, \
	 "dat.txt" every ::2::2 using 1:3:xtic(2) with boxes ls 3, \
	 "dat.txt" every ::3::3 using 1:3:xtic(2) with boxes ls 4, \
	 "dat.txt" every ::4::4 using 1:3:xtic(2) with boxes ls 5, \
	 "dat.txt" every ::5::5 using 1:3:xtic(2) with boxes ls 6, \
	 "dat.txt" every ::6::6 using 1:3:xtic(2) with boxes ls 7, \
	 "dat.txt" every ::7::7 using 1:3:xtic(2) with boxes ls 8