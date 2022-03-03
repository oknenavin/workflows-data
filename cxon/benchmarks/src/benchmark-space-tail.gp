set terminal svg dashed noenhanced size 900,450 font ',14' background rgb 'white'

TITLE = sprintf('"`head -n1 %s | sed -E "s/.*\/ (.*)/\1/"`"', INPUT.'.data')
set title @TITLE font ',17'

set border 11
set xtics nomirror

set ylabel 'Size (B)' font ',17'
set ytics nomirror
set yrange [0:]

set y2label 'Compilation time (s)' font ',17'
set y2tics
set y2range [0:]

set format x ''

set output OUTPUT.'-space.svg'
plot INPUT.'.data'   every 7:1:0  using 2 axes x1y1 smooth acsplines with line dt 1 lw 2 lc rgb '#FF8C00' title 'native #0', \
                ''   every 7:1:0  using 3 axes x1y2 smooth acsplines with line dt 3 lw 2 lc rgb '#FF8C00' notitle, \
                ''   every 7:1:1  using 2 axes x1y1 smooth acsplines with line dt 1 lw 2 lc rgb '#32CD32' title 'native #1', \
                ''   every 7:1:1  using 3 axes x1y2 smooth acsplines with line dt 3 lw 2 lc rgb '#32CD32' notitle, \
                ''   every 7:1:2  using 2 axes x1y1 smooth acsplines with line dt 1 lw 2 lc rgb '#DC143C' title 'native #2', \
                ''   every 7:1:2  using 3 axes x1y2 smooth acsplines with line dt 3 lw 2 lc rgb '#DC143C' notitle, \
                ''   every 7:1:3  using 2 axes x1y1 smooth acsplines with line dt 1 lw 2 lc rgb '#1E90FF' title 'node', \
                ''   every 7:1:3  using 3 axes x1y2 smooth acsplines with line dt 3 lw 2 lc rgb '#1E90FF' notitle
