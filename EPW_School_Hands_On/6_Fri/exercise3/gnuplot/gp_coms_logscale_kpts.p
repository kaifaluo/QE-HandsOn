set terminal eps color enhanced font "arial,16" size 5.0,4.0
set output "ZG_spectra_logscale_kpts.eps"
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

plot "epsi_si_333_ZG_30.dat" u ($1):($2)  t "ZG, 0K, 30 kpts" w l lw 3 lc rgb "grey",\
     "epsi_si_333_ZG_50.dat" u ($1):($2)  t "ZG, 0K, 50 kpts"  w l lw 3 lc rgb "light-red",\
     "epsi_si_333_ZG_100.dat" u ($1):($2) t "ZG, 0K, 100 kpts"  w l lw 3 lc rgb "royalblue",\
     "epsi_si_333_ZG_200.dat" u ($1):($2) t "ZG, 0K, 200 kpts"  w l lw 5 lc rgb "black"

exit
