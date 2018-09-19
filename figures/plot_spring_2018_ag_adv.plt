set grid
set xrange [2:6]
set yrange [0:3]
set ylabel "Std. Deviation" font "Times,22"
set xlabel "Mean Score" font "Times,22"
set xtics font "Times,20"
set ytics font "Times,20"
set pointsize 3
set key font "Times,20"
set terminal postscript color enhanced
set output "aggregate_data_spring_2018_adv.eps"

f(x) = a*x + b
fit f(x) 'aggregate_data_spring_2018_adv.dat' using 1:2 via a,b

plot "aggregate_data_spring_2018_adv.dat" w p pt 6 lc -1 title "Aggregate data", f(x) lw 2 lc -1 title "Linear regression (slope=-0.4+/-0.1, intercept=2.65+/-0.5)"
