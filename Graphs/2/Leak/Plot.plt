reset
set terminal wxt size 600,262 enhanced font 'Verdana,10' persist
set terminal epslatex color colortext
set output 'Leak.tex'
my_line_width = "3.5"
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

set style line 1 linecolor rgbcolor blue_075 linewidth @my_line_width pt 7
set style line 2 linecolor rgbcolor green_025 linewidth @my_line_width pt 5
set style line 3 linecolor rgbcolor red_025 linewidth @my_line_width pt 9
set style line 4 linecolor rgbcolor brown_025 linewidth @my_line_width pt 13
set style line 5 linecolor rgbcolor blue_050 linewidth @my_line_width pt 11
set style line 6 linecolor rgbcolor green_050 linewidth @my_line_width pt 7
set style line 7 linecolor rgbcolor red_050 linewidth @my_line_width pt 5
set style line 8 linecolor rgbcolor brown_050 linewidth @my_line_width pt 9
set style line 9 linecolor rgbcolor blue_075 linewidth @my_line_width pt 13
set style line 10 linecolor rgbcolor green_075 linewidth @my_line_width pt 11
set style line 11 linecolor rgbcolor red_075 linewidth @my_line_width pt 7
set style line 12 linecolor rgbcolor brown_075 linewidth @my_line_width pt 5
set style line 13 linecolor rgbcolor blue_100 linewidth @my_line_width pt 9
set style line 14 linecolor rgbcolor green_100 linewidth @my_line_width pt 13
set style line 15 linecolor rgbcolor red_100 linewidth @my_line_width pt 11
set style line 16 linecolor rgbcolor brown_100 linewidth @my_line_width pt 7
set style line 17 linecolor rgbcolor "#224499" linewidth @my_line_width pt 5

set border 31 lw @my_axis_width lc rgb text_color
set key out horiz bot center
set grid lc rgb grid_color



set xlabel 'Leak size ($mm^2$)'
set ylabel 'Power loss (kW)'
set yrange [0:8000]
set xrange [0:32000]
set size 1.3,0.8
set key off
set datafile separator ","
f(x) = a*x + b
fit f(x) 'Data.csv' u 2:4  via a, b
unset key

plot  'Data.csv' u 2:4 w p ls 1, f(x) with line ls 1 