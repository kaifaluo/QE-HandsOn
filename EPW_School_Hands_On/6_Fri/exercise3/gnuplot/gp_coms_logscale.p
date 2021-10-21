set terminal eps color enhanced font "arial,20" size 5.0,4.0
set output "ZG_spectra_logscale.eps"
set encoding iso_8859_1
set ytics 10  offset 0.5,0
set xrange [0.0:4.3]
set yrange [0.0001:55]
set logscale y
set xtics 1.0
set ylabel "{/Symbol e}_2 ({/Symbol w})"  offset 0.3,0
set xlabel "Photon energy (eV)"
set style data linespoints
set key left
set format y "10^{%L}"

set mxtics 5
set mytics 5

plot "epsi_si_333_equil_30.dat" u ($1):($2) t "Equil"  w l lw 3 lc rgb "red",\
     "epsi_si_333_ZG_30.dat" u ($1):($2)  t "ZG, 0K" w l lw 3 lc rgb "blue"

exit
