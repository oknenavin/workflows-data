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

set output OUTPUT.'-write.average.svg'
plot INPUT.'.data'   every 17:1:16 using 10 axes x1y1 smooth acsplines with line dt 1 lw 3 lc rgb '#FF8C00' title 'cxon', \
                ''   every 17:1:16 using 11 axes x1y2 smooth acsplines with line dt 3 lw 3 lc rgb '#32CD32' notitle, \
                ''   every 17:1:16 using 12 axes x1y1 smooth acsplines with line dt 1 lw 2 lc rgb '#32CD32' title 'boost/json', \
                ''   every 17:1:16 using 13 axes x1y2 smooth acsplines with line dt 3 lw 3 lc rgb '#DC143C' notitle, \
                ''   every 17:1:16 using 14 axes x1y1 smooth acsplines with line dt 1 lw 2 lc rgb '#DC143C' title 'rapidjson', \
                ''   every 17:1:16 using 15 axes x1y2 smooth acsplines with line dt 3 lw 3 lc rgb '#1E90FF' notitle, \
                ''   every 17:1:16 using 16 axes x1y1 smooth acsplines with line dt 1 lw 2 lc rgb '#1E90FF' title 'nlohmann/json'
