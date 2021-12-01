set terminal svg dashed noenhanced size 900,450 font ',14' background rgb 'white'

set style data histograms
set boxwidth 0.70
set style fill solid 0.7

TITLE = sprintf('"`head -n1 %s | sed -E "s/.*\/ (.*)/\1/"`"', INPUT.'.data')
set title @TITLE font ',19'

set ylabel 'Size (B)' font ',19'
set ytics nomirror
set yrange [0:]
#set grid ytics

set y2label 'Compilation time (s)' font ',19'
set y2tics
set y2range [0:]
#set grid y2tics

set xtics nomirror rotate by -30

set border 11

set key off auto columnheader
#set key inside right top vertical 
#set key autotitle columnheader 

# dx = 1 / (2 * (c + gap))
dx = 1 / 16.0

set output OUTPUT.'-space.svg'
plot INPUT.'.data'   using 2:xtic(1)     axes x1y1 lc rgb '#FF8C00' title 'Size', \
                ''   using 3             axes x1y2 lc rgb '#32CD32' title 'Compilation time', \
                ''   using ($0 - dx):2:2 axes x1y1 with labels right offset 0,0.5, \
                ''   using ($0 + dx):3:3 axes x1y2 with labels  left offset 0,0.5
