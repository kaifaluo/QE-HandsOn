set terminal postscript eps color enhanced size 3,2 font 'Arial-Bold'
set output "ph_dispersion_444.eps"
set ytics 100
set xrange [0:5.3534]
set yrange [0:600]
unset xtics
set key left
set format y "%.0f"
set xlabel "wave vector" offset 1.1,-1.3
set ylabel "Frequency (cm^{-1})"
set arrow from 1.0607,0 to 1.0607,600 nohead
set arrow from 1.4142,0 to 1.4142,600 nohead
set arrow from 2.4142,0 to 2.4142,600 nohead
set arrow from 3.2802,0 to 3.2802,600 nohead
set arrow from 4.1463,0 to 4.1463,600 nohead
set arrow from 4.6463,0 to 4.6463,600 nohead
set arrow from 5.3534,0 to 5.3534,600 nohead
set label "{/Symbol G}" at -0.015,-30
set label "K" at 1.05,-30
set label "X" at 1.40,-30
set label "{/Symbol G}" at 2.4,-30
set label "L" at 3.265,-30
set label "X" at 4.000,-30
set label "W" at 4.500,-30
set label "L" at 5.250,-30
#
set label "TA" at 3.6,215
set label "LA" at 3.5,352
set label "LO" at 3.6,432
set label "TO" at 3.6,502
set style data linespoints

plot "si_ph_dispersion.xmgr" using 1:(column(2)) title "DFPT" with lines lw 3 linecolor rgb "black"

exit

