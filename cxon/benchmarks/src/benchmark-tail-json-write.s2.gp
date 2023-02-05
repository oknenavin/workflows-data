set terminal svg dashed noenhanced size 1200,600 font ',14' background rgb 'white'

set title TITLE font ',17'
set ylabel 'Throughput (MB/s)' font ',17'
set xlabel 'Time' font ',17'

set format x ''
set grid ytics

set output OUTPUT.'-write.svg'
plot INPUT.'.data'   every 17:1:10 using 10 smooth acsplines with line dt 1 lw 2 lc             1 title 'random-null.json', \
                ''   every 17:1:11 using 10 smooth acsplines with line dt 1 lw 2 lc             2 title 'random-bool.json', \
                ''   every 17:1:9  using 10 smooth acsplines with line dt 1 lw 2 lc             3 title 'random-fp64.json', \
                ''   every 17:1:12 using 10 smooth acsplines with line dt 1 lw 2 lc             4 title 'random-string.json', \
                ''   every 17:1:13 using 10 smooth acsplines with line dt 1 lw 2 lc             5 title 'random-array.json', \
                ''   every 17:1:14 using 10 smooth acsplines with line dt 1 lw 2 lc             6 title 'random-object.json', \
                ''   every 17:1:15 using 10 smooth acsplines with line dt 3 lw 3 lc rgb '#A0A0A0' title '<average>'
