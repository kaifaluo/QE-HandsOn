set terminal eps color enhanced font "arial,10" size 4.0,2.5
set output "strf_ZG_40_40.eps"
set encoding iso_8859_1
set ylabel "Q_y(\305^{-1})"  offset 0.5,0.0
set xlabel "Q_x(\305^{-1})"  offset 0.0,1.5
set xtics offset 0.0,1.0

set xrange [-10:10]
set yrange [-10:10]
set palette rgbformulae 33,13,10
set colorbox horizontal user origin 0.3,0.87 size 0.4,0.04
set cbrange [0:0.025]
set cbtics 0.01 offset 0.0,2.4,0
set view map
set size square
set palette defined (0 "white", 0.5 "red", 1 "blue")
set palette defined (0 "white",  0.25 "light-red", 0.5 "red", 1 "dark-red")
set pm3d interp 1,10

# set label "$\\Gamma$" at 0.0,0.0 front


set label "Q_z = 0 \305^{-1}" at -17.0,35.0 front
splot "structure_factor_all-phonon_broad.dat" u ($1):($2):($3) not w pm3d
