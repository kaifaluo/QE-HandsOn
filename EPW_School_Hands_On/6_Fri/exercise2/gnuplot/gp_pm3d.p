set terminal eps color enhanced font "arial,20" size 5.0,4.0
set output "bsu_si_0K.eps"
set encoding iso_8859_1
set xrange [0.0:0.9611]
set yrange [3:9]
set grid x back lw 5
set ytics 2.0  offset 1.0,0
unset xtics
set ylabel "Energy (eV)"  offset 0.3,0
set label "{/Symbol G}" at 0.0,2.8
set label "X" at 0.95,2.8
set style data linespoints

set view map
set colorbox horizontal user origin 0.15,0.88 size 0.35,0.03
set cbtics 0.25 offset 0.0,2.4,0
set pm3d interp 1,20
set cbrange[0.0:1.0]
set format y "%.1f"

set palette defined (0.1 '#000004', 0.2 '#1c1044', 0.5 '#4f127b', 1 '#812581', 2 '#b5367a', 3 '#e55964', 4 '#fb8761', 5 '#fec287', 6 '#fbfdbf')

splot "spectral_function.dat" u ($1):($2):($3)  not w pm3d,\
   "bands.dat.gnu" u ($1):($2):($3) not  w p ps 0.2 pt 3 lc rgb "white"

exit
