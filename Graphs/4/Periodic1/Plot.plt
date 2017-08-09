reset
set terminal wxt  enhanced font 'Verdana,10' persist
set terminal epslatex color colortext
set output 'Periodic1.tex'
my_line_width = "1"
my_axis_width = "1.5"
my_ps = "1.2"

red_000 = "#F9B7B0"
red_025 = "#FC7A57"
red_050 = "#CF6448"
red_075 = "#A14E38"
red_100 = "#733828"

blue_000 = "#A9BDE6"
blue_025 = "#7A8499"
blue_050 = "#54617C"
blue_075 = "#2F3F60"
blue_100 = "#121723" 

green_000 = "#A6EBB5"
green_025 = "#748575"
green_050 = "#4D624E"
green_075 = "#264027"
green_100 = "#0E180F"

brown_000 = "#F9E0B0"
brown_025 = "#DF9A57"
brown_050 = "#B77F48"
brown_075 = "#8E6338"
brown_100 = "#664628"

grid_color = "#d5e0c9"
text_color = "#000000"

set style line 1 lc rgbcolor blue_075 lt 1 lw 1.2 pt 7 pi -1 ps 1.5
set style line 2 linecolor rgbcolor green_025 lt 1 lw 1.2 pt 7 pi -1 ps 1.5
set style line 3 linecolor rgbcolor red_025 lt 1 lw 1.2 pt 7 pi -1 ps 1.5
set style line 4 linecolor rgbcolor brown_075 lt 1 lw 1.2 pt 7 pi -1 ps 1.5
set style line 5 linecolor rgbcolor blue_050 lt 1 lw 1.2 pt 7 pi -1 ps 1.5
set style line 6 linecolor rgbcolor green_050 lt 1 lw 1.2 pt 7 pi -1 ps 1.5
set style line 7 linecolor rgbcolor red_050 lt 1 lw 1.2 pt 7 pi -1 ps 1.5
set style line 8 linecolor rgbcolor brown_050 lt 1 lw 1.2 pt 7 pi -1 ps 1.5
set style line 9 linecolor rgbcolor blue_075 lt 1 lw 1.2 pt 7 pi -1 ps 1.5
set style line 10 linecolor rgbcolor green_075 lt 1 lw 1.2 pt 7 pi -1 ps 1.5
set style line 11 linecolor rgbcolor red_075 lt 1 lw 1.2 pt 7 pi -1 ps 1.5
set style line 12 linecolor rgbcolor brown_075 lt 1 lw 1.2 pt 7 pi -1 ps 1.5
set style line 13 linecolor rgbcolor blue_100 lt 1 lw 1.2 pt 7 pi -1 ps 1.5
set style line 14 linecolor rgbcolor green_100 lt 1 lw 1.2 pt 7 pi -1 ps 1.5
set style line 15 linecolor rgbcolor red_100 lt 1 lw 1.2 pt 7 pi -1 ps 1.5
set style line 16 linecolor rgbcolor "#cacaca" lt 1 lw 1.2 pt 7 pi -1 ps 1.5
set style line 17 linecolor rgbcolor "#224499" lt 1 lw 1.2 pt 7 pi -1 ps 1.5


set border 31 lw @my_axis_width lc rgb text_color
set key out horiz bot center
set grid lc rgb grid_color
set timefmt '%Y/%m/%d'
set xdata time
set mxtics 6
set xtics 518400 
set format x '%Y/%m/%d' 
set xrange ["2016/11/1":"2016/11/30"]
set xlabel 'Date of simulation'
set ylabel "Accuracy (\\%)";
set yrange [80:100]
set ytics 5 
set mytics 10
unset autoscale
set size 1.3,0.8
set datafile separator ","
plot 'Results.csv' using 1:(100-$2) title "Flow" with lp ls 1, \
     'Results.csv' using 1:(100-$3) title "Pressure" with lp ls 4, \
	 'Results.csv' using 1:(100-$4) title "Power" with lp lt 7, 