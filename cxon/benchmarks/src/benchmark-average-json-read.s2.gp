set terminal svg dashed noenhanced size 1200,600 font ',14' background rgb 'white'

set title TITLE font ',17'
set ylabel 'Throughput (MB/s)' font ',17'
set ytics nomirror
set grid ytics

#set y2label 'cxon / x' font ',17'
set y2tics
set grid y2tics
set y2range [0:]

set xlabel 'Time' font ',17'
set format x ''

set output OUTPUT.'-read.average.svg'
plot INPUT.'.data'   every 16::15::1600 using 3 axes x1y1 smooth acsplines with line dt 1 lw 3 lc rgb '#FF8C00' title 'cxon', \
                ''   every 16::15::1600 using 4 axes x1y2 smooth acsplines with line dt 3 lw 3 lc rgb '#32CD32' notitle, \
                ''   every 16::15::1600 using 5 axes x1y1 smooth acsplines with line dt 1 lw 2 lc rgb '#32CD32' title 'boost/json', \
                ''   every 16::15::1600 using 6 axes x1y2 smooth acsplines with line dt 3 lw 3 lc rgb '#DC143C' notitle, \
                ''   every 16::15::1600 using 7 axes x1y1 smooth acsplines with line dt 1 lw 2 lc rgb '#DC143C' title 'rapidjson', \
                ''   every 16::15::1600 using 8 axes x1y2 smooth acsplines with line dt 3 lw 3 lc rgb '#1E90FF' notitle, \
                ''   every 16::15::1600 using 9 axes x1y1 smooth acsplines with line dt 1 lw 2 lc rgb '#1E90FF' title 'nlohmann/json'
