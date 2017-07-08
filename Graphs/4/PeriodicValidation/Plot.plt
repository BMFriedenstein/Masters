reset
set terminal wxt  enhanced font 'Verdana,10' persist
set terminal epslatex color colortext
set output 'PeriodicValidation.tex'
my_line_width = "2"
my_axis_width = "1.5"
my_ps = "1.2"

red_000 = "#F9B7B0"
red_025 = "#F97A6D"
red_050 = "#E62B17"
red_075 = "#8F463F"
red_100 = "#6D0D03"

blue_000 = "#A9BDE6"
blue_025 = "#7297E6"
blue_050 = "#1D4599"
blue_075 = "#2F3F60"
blue_100 = "#031A49" 

green_000 = "#A6EBB5"
green_025 = "#67EB84"
green_050 = "#11AD34"
green_075 = "#2F6C3D"
green_100 = "#025214"

brown_000 = "#F9E0B0"
brown_025 = "#F9C96D"
brown_050 = "#E69F17"
brown_075 = "#8F743F"
brown_100 = "#6D4903"

grid_color = "#d5e0c9"
text_color = "#000000"


set style line 1 lc rgbcolor blue_025 lt 1 lw 4 pt 7 pi -1 ps 1
set style line 4 lc rgbcolor brown_025 lt 1 lw 4 pt 7 pi -1 ps 1

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
