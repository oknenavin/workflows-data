set terminal svg dashed noenhanced size 900,450 font ',14' background rgb 'white'

set style data histograms
set boxwidth 0.70
set style fill solid 1.00

set title TITLE font ',19'
set ylabel 'Throughput (MB/s)' font ',19'

set xtics nomirror rotate by -30
set grid ytics

set output OUTPUT.'-read.svg'
plot INPUT.'.data'   using 3:xtic(1) lc rgb '#FF8C00' title 'cxon', \
                ''   using 5         lc rgb '#32CD32' title 'boost/json', \
                ''   using 7         lc rgb '#DC143C' title 'rapidjson', \
                ''   using 9         lc rgb '#1E90FF' title 'nlohmann/json'
