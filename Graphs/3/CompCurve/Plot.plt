reset
set terminal wxt  enhanced font 'Verdana,10' persist
#set terminal epslatex color colortext
#set output 'CompCurve.tex'
my_line_width = "1"
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

set style line 1 linecolor rgbcolor blue_025 linewidth @my_line_width pt 7
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
set style line 17 linecolor rgbcolor "#224499" linewidth @my_line_width pt 2

set border 31 lw @my_axis_width lc rgb text_color
set key out horiz bot center
set grid lc rgb grid_color
f(x)=(x > 0 && x < 50) ? 800-(0.001*x +0.03525)**(-2) : 1/0;
#g(x)=(x > 0 && x < 2) ? 0.557*sin(100*(x-3)) : 1/0;
#h(x)=(x > 0.35 && x < 2) ? 0.5*sin(10*x + 20) : 1/0;
set yrange [0:480]
set xrange [0:50]
set cbrange [0:100]
set xlabel 'Mass flow ($kg^3/s$)'
set ylabel 'Pressure (kPa)'
set size 1.3,0.8
set palette defined (  0 "#000000", 1.5 "#000000", 5 blue_025 );
set cblabel "Guide vain position"
set samples 10000
set key off
set label "Surge limit" at 3,155 left rotate by 53
plot 'data.dat' u 2:5:7 with dots palette,f(x) ls 17;
