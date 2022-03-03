set terminal svg dashed noenhanced size 900,450 font ',14' background rgb 'white'

set style data histograms
set boxwidth 0.70
set style fill solid 0.7

set title TITLE font ',17'
set ylabel 'Throughput (MB/s)' font ',17'

set xtics nomirror rotate by -30
set grid ytics

cc0 = sprintf('"`echo %s | sed -E "s/(.*\/)/\1g++./"`"', INPUT)
cc1 = sprintf('"`echo %s | sed -E "s/(.*\/)/\1clang++./"`"', INPUT)
cc2 = sprintf('"`echo %s | sed -E "s/(.*\/)/\1msvc++./"`"', INPUT)
cc3 = sprintf('"`echo %s | sed -E "s/(.*\/)/\1xcode./"`"', INPUT)

set output OUTPUT.'-read.svg'
plot @cc0.'.data'   using 3:xtic(1) lc rgb '#FF8C00' title 'g++', \
     @cc1.'.data'   using 3         lc rgb '#32CD32' title 'clang++', \
     @cc2.'.data'   using 3         lc rgb '#DC143C' title 'msvc++', \
     @cc3.'.data'   using 3         lc rgb '#1E90FF' title 'xcode'
