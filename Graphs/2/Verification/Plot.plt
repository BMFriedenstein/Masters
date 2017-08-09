reset
set terminal wxt  enhanced font 'Verdana,10' persist
set terminal epslatex color colortext
set output 'Verification.tex'
my_line_width = "3"
my_axis_width = "3"
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
set dashtype 1 (10,10,10,10)

set style line 1 linecolor rgbcolor blue_075 linewidth @my_line_width pt 7
set style line 2 linecolor rgbcolor green_025 linewidth 2 pt 5
set style line 3 linecolor rgbcolor red_050 linewidth 2 pt 9
set style line 4 linecolor rgbcolor brown_075 linewidth @my_line_width pt 13
set style line 5 linecolor rgbcolor "#ffd3ce" linewidth 6 pt 9
set style line 6 linecolor rgbcolor "#ceffd2" linewidth 6 pt 9
set style line 9 linecolor rgbcolor blue_075 linewidth 1.5 pt 13 dt 1
set style line 12 linecolor rgbcolor brown_075 linewidth 1.5 pt 5 dt 1

set style line 16 linecolor rgbcolor "#cacaca" linewidth @my_line_width pt 7
set style line 17 linecolor rgbcolor "#224499" linewidth @my_line_width pt 2

set border 31 lw @my_axis_width lc rgb text_color
set key out horiz bot center
set grid lc rgb grid_color

set border 31 lw @my_axis_width lc rgb text_color
set key out horiz bot center
set grid lc rgb grid_color
set timefmt '%H:%M'
set xdata time
set format x '%H:%M'
set xrange ["0:30":"24:00"]
set xlabel 'Time of Day'
set ylabel "Power $(MW)$";
set yrange [0:10]
set ytics 1 nomirror

set y2label '$Error$'
set y2range [0:10]
set y2tics 10 nomirror
set arrow from "01:00",5 to "01:00",6.287917
set arrow from "01:00",7.76 to "01:00",6.472708
set label "\\shortstack{Residual \\\ difference}" at "01:10",5.8
set label "MAE" at "01:10",0.6
set label "MSE" at "01:10",1.6
set size 1.3,0.9
set datafile separator ","
plot 'Data.csv' using 1:11 title "AE" with impulses ls 5 axes x1y2, \
	 'Data.csv' using (timecolumn(1)+60*15):8 title "SE" with impulses ls 6 axes x1y2, \
	 'Data.csv' using 1:9 title "MAE" with lines ls 3 axes x1y2, \
	 'Data.csv' using 1:10 title "MSE" with lines ls 2 axes x1y2, \
     'Data.csv' using 1:2 title "Actual power" with lines ls 1, \
     'Data.csv' using 1:3 title "Simulated power" with lines ls 4, \
	 'Data.csv' using 1:4 title "Average Actual" with lines ls 9,\
	 'Data.csv' using 1:5 title "Average Simulation" with lines ls 12,\