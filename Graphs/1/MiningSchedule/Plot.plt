reset
#set terminal wxt size 1500,600
set terminal epslatex color colortext
set output 'MiningSchedule.tex'
my_line_width = "2"
my_axis_width = "1.5"
my_ps = "1.2"
set xdata time
set timefmt "%H:%M"

set format x "%H:%M"
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
text_color = "#6a6a6a"

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
set style line 17 linecolor rgbcolor "#224499" linewidth @my_line_width pt 5

set border 31 lw @my_axis_width lc rgb text_color
set key out horiz bot center
set grid lc rgb grid_color

set xlabel 'Time of day'
set xrange ["00:00":"23:00"]
set xtics "01:00" rotate
set ylabel 'kPa'
#set y2label "$m^3$/t";
set yrange [400:560]
#set y2range [0:400]
set ytics 20 nomirror
#set y2tics 50 nomirror
set title "Typical mining schedule and pressure requirement"
set size 1.3,0.8

set object 1 rect from first '00:00', graph 0 to first '05:00', graph 1
set object 1 rect fc rgb blue_000 fillstyle solid 0.5
set object 2 rect from first '05:00', graph 0 to first '07:00', graph 1
set object 2 rect fc rgb brown_000 fillstyle solid 0.5
set object 3 rect from first '07:00', graph 0 to first '14:00', graph 1
set object 3 rect fc rgb green_000 fillstyle solid 0.5
set object 4 rect from first '14:00', graph 0 to first '16:00', graph 1
set object 4 rect fc rgb red_000 fillstyle solid 0.5
set object 5 rect from first '16:00', graph 0 to first '21:00', graph 1
set object 5 rect fc rgb red_075 fillstyle solid 0.5
set object 6 rect from first '21:00', graph 0 to graph 1, graph 1
set object 6 rect fc rgb blue_000 fillstyle solid 0.5

set label '\shortstack{Sweeping and \\ cleaning}' at first '02:30', graph 0.5 center rotate front 
set label '\shortstack{Workers travel to \\ working areas}' at first '06:00', graph 0.5 center rotate front
set label '\shortstack{Drilling}' at first '10:30', graph 0.5 center front
set label '\shortstack{Explosive charge \\ up}' at first '15:00', graph 0.5 center rotate front
set label '\shortstack{Blasting}' at first '18:30', graph 0.5 center front
set label '\shortstack{Sweeping and \\ cleaning}' at first '22:00', graph 0.5 center rotate front 


plot 'Data.dat' using 1:2 title "Pressure requirement (kPa)" with line ls 1#, \
     #'Data.dat' using 1:2 title "Volume per Ton ($m^3$/t)" with linespoints ls 4 axes x1y2
