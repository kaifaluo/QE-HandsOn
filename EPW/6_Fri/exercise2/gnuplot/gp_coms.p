set terminal postscript eps color enhanced size 2,2.5 font 'Arial-Bold'
set output "band_structure.eps"
set ytics 3
set xrange [0:1.002]
set yrange [-6:9]
unset xtics
set key left
set format y "%.1f"
# set xlabel "wave vector" offset 1.1,-1.3
set ylabel "Energy (eV)"
set label "{/Symbol G}" at -0.015,-6.4
set label "X" at 0.97,-6.4
set style data linespoints
set object circle front at 0.86,6.743 size 0.03 fillcolor rgb "black" lw 1
plot "bands.dat.gnu" using 1:(column(2)) not with lines lw 3 linecolor rgb "black",\
     "bands.dat.gnu" using 1:(column(2)) not w p pt 6 ps 0.4 linecolor rgb "black"

exit
