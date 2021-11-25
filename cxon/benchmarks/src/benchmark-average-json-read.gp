set terminal svg dashed noenhanced size 1200,600 font ',14' background rgb 'white'

set title TITLE font ',19'
set ylabel 'Throughput (MB/s)' font ',19'
set xlabel 'Time' font ',19'

set format x ''
set grid ytics

set output OUTPUT.'-read.average.svg'
plot INPUT.'.data'   every 17:1:16 using 3 smooth acsplines with line dt 1 lw 2 lc rgb '#FF8C00' title 'cxon', \
                ''   every 17:1:16 using 5 smooth acsplines with line dt 1 lw 2 lc rgb '#32CD32' title 'boost/json', \
                ''   every 17:1:16 using 7 smooth acsplines with line dt 1 lw 2 lc rgb '#DC143C' title 'rapidjson', \
                ''   every 17:1:16 using 9 smooth acsplines with line dt 1 lw 2 lc rgb '#1E90FF' title 'nlohmann/json'
