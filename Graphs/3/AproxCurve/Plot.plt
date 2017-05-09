reset
set terminal wxt  enhanced font 'Verdana,10' persist
set terminal epslatex color colortext
set output 'AproxCurve.tex'
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
set style line 16 linecolor rgbcolor "#cacaca" linewidth @my_line_width pt 7
set style line 17 linecolor rgbcolor "#224499" linewidth @my_line_width pt 2

set border 31 lw @my_axis_width lc rgb text_color
set key out horiz bot center
set grid lc rgb grid_color
f(x)=-2.586*x**2+ 7.788*x + 494 ;

set yrange [0:550]
set xrange [0:16]
set cbrange [0:100]
set ylabel 'Mass flow ($kg^3/s/\sqrt(k)/Bar$)'
set xlabel 'Pressure ratio'
set size 1.3,0.8

set cblabel "Guide vain position"
set samples 10000
set key off

set object 1 circle at 0.1,494 size 0.1 fc rgb "#224499" fillstyle solid 0.85 front
set object 2 circle at 15.39,0.1 size 0.1 fc rgb "#224499" fillstyle solid 0.85 front
set object 3 circle at 6.02,447 size 0.1 fc rgb "#224499" fillstyle solid 0.85 front
set label "$f(x) = -2.586x^2 + 7.788 + 494$" at 9, 420 left 

plot f(x) ls 17;
