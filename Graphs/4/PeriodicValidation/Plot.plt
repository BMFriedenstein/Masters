reset
set terminal wxt  enhanced font 'Verdana,10' persist
set terminal epslatex color colortext
set output 'PeriodicValidation.tex'
my_line_width = "2"
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


set style line 1 lc rgbcolor blue_075 lt 1 lw 4 pt 7 pi -1 ps 1
set style line 4 lc rgbcolor brown_075 lt 1 lw 4 pt 7 pi -1 ps 1

set border 31 lw @my_axis_width lc rgb text_color
set key out horiz bot center
set grid lc rgb grid_color
set timefmt '%d/%m/%Y'
set xdata time
set format x '%d/%m/%Y'
set xrange ["01/11/2016":"30/11/2016"]

set xlabel 'Date'
set ylabel "Power (kW)";
set yrange [7:14]
set ytics 2 nomirror
set xtics 432000
set mxtics 1

set border 31 lw @my_axis_width lc rgb text_color
set key out horiz bot center
set grid lc rgb grid_color
set size 1.3,0.85
set datafile separator ","

plot 'Results.csv' using 1:3 title "Compressor power measrement" with lp ls 1, \
     'Results.csv' using 1:4 title "Independant measurement" with lp ls 4 , \
