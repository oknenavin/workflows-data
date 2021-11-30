set terminal svg dashed noenhanced size 900,450 font ',14' background rgb 'white'

set style data histograms
set boxwidth 0.70
set style fill solid 1.00

TITLE = sprintf('"`cat %s | head -n1 | sed -E "s/.*\/ (.*)/\1/"`"', INPUT.'.data')
set title @TITLE font ',19'

set ylabel 'Size (B)' font ',19'
set ytics nomirror
set grid y2tics
set y2range [0:]

set y2label 'Compilation time (s)' font ',19'
set y2tics
set y2range [0:]
set grid ytics

set xtics nomirror rotate by -30

set output OUTPUT.'-space.svg'
plot INPUT.'.data'   using 2:xtic(1) axes x1y1 lc rgb '#FF8C00' title 'Size', \
                ''   using 3         axes x1y2 lc rgb '#32CD32' title 'Compilation time'
