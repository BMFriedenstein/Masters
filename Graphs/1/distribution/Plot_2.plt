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
set xrange [0:100]
set yrange [0:1]
set xtics 100
unset grid
unset ytics
set size 1.3,0.7
set key width 2000
set object 1 rect from first 0, graph 0 to first 21, graph 1
set object 1 rect fc rgb "#285EA6" fillstyle solid 0.85
set object 2 rect from first 21, graph 0 to first 40, graph 1
set object 2 rect fc rgb "#D99694" fillstyle solid 0.85
set object 3 rect from first 40, graph 0 to first 58, graph 1
set object 3 rect fc rgb "#9DBB61" fillstyle solid 0.85
set object 4 rect from first 58, graph 0 to first 72, graph 1
set object 4 rect fc rgb "#98D0DE" fillstyle solid 0.85
set object 5 rect from first 72, graph 0 to first 82, graph 1
set object 5 rect fc rgb "#A6A6A6" fillstyle solid 0.85
set object 6 rect from first 82, graph 0 to first 90, graph 1
set object 6 rect fc rgb "#9B9B4F" fillstyle solid 0.85
set object 7 rect from first 90, graph 0 to first 96, graph 1
set object 7 rect fc rgb "#BFB1CF" fillstyle solid 0.85
set object 8 rect from first 96, graph 0 to graph 1, graph 1
set object 8 rect fc rgb "#FAC090" fillstyle solid 0.85
set object 9 rect from first 0.01, graph 0.005 to first 20.99, graph 0.995
set object 9 rect lw 2 fs empty border lc rgb '#aa0000'
set label '\shortstack{21\%}' at first 10.5, graph 0.5 center rotate front 
set label '\shortstack{19\%}' at first 30.5, graph 0.5 center rotate front
set label '\shortstack{18\%}' at first 49, graph 0.5 center rotate front
set label '\shortstack{14\%}' at first 65, graph 0.5 center rotate front
set label '\shortstack{10\%}' at first 77, graph 0.5 center rotate front
set label '\shortstack{8\%}' at first 86, graph 0.5 center rotate front 
set label '\shortstack{6\%}' at first 93.5, graph 0.5 center rotate front
set label '\shortstack{4\%}' at first 98, graph 0.5 center rotate front 

set key out horiz bot center
plot [][0:1] 2 lc rgb '#285EA6' lw 10 t 'Compressed air',\
2 lc rgb '#D99694' lw 10 t 'Mining processes',\
2 lc rgb '#9DBB61' lw 10 t 'Pumping',\
2 lc rgb '#98D0DE' lw 10 t 'Ventilation and cooling',\
2 lc rgb '#A6A6A6' lw 10 t 'Office buildings and hostels',\
2 lc rgb '#9B9B4F' lw 10 t 'Processing plant',\
2 lc rgb '#BFB1CF' lw 10 t 'Hoisting',\
2 lc rgb '#FAC090' lw 10 t 'Other'
