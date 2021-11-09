set terminal svg dashed noenhanced size 1200,600 font ',14'

CLR = '#A0A0A0'

set title TITLE tc rgb CLR
set ylabel 'Throughput (MB/s)' tc rgb CLR

set xtics 1
set grid ytics
set border lc rgb CLR

set output OUTPUT.'-write.svg'
plot INPUT.'.data'   every 17:1:2  using 10 with line dt 1 lw 2 lc rgb '#FF8C00' title 'apache_builds.json', \
                ''   every 17:1:3  using 10 with line dt 1 lw 2 lc rgb '#32CD32' title 'canada.json', \
                ''   every 17:1:9  using 10 with line dt 1 lw 2 lc rgb '#DC143C' title 'mesh.json', \
                ''   every 17:1:12 using 10 with line dt 1 lw 2 lc rgb '#1E90FF' title 'random.json', \
                ''   every 17:1:16 using 10 smooth csplines with line dt 3 lw 3 lc rgb CLR title '<average>.json'
