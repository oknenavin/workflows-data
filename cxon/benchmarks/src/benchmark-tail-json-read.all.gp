set terminal png size 1200,600 font ',10'
set termoption noenhanced

#set style data histograms
#set boxwidth 0.70
#set style fill solid 1.00
#set style line 3

if (!exists('TITLE')) TITLE='Read'
set title TITLE

#set xrange reverse
set xtics 1
set grid ytics
#set ytics 50
set ylabel 'Throughput (MB/s)'

set output OUTPUT.'-read.png'
plot INPUT.'.data'   every 17:1:0  using 3 with line lc  1 title 'blns.json', \
                ''   every 17:1:1  using 3 with line lc  2 title 'emoji.json', \
                ''   every 17:1:2  using 3 with line lc  3 title 'apache_builds.json', \
                ''   every 17:1:3  using 3 with line lc  4 title 'canada.json', \
                ''   every 17:1:4  using 3 with line lc  5 title 'citm_catalog.json', \
                ''   every 17:1:5  using 3 with line lc  6 title 'github_events.json', \
                ''   every 17:1:6  using 3 with line lc  7 title 'gsoc-2018.json', \
                ''   every 17:1:7  using 3 with line lc  8 title 'instruments.json', \
                ''   every 17:1:8  using 3 with line lc  9 title 'marine_ik.json', \
                ''   every 17:1:9  using 3 with line lc 10 title 'mesh.json', \
                ''   every 17:1:10 using 3 with line lc 11 title 'mesh.pretty.json', \
                ''   every 17:1:11 using 3 with line lc 12 title 'numbers.json', \
                ''   every 17:1:12 using 3 with line lc 13 title 'random.json', \
                ''   every 17:1:13 using 3 with line lc 14 title 'twitter.json', \
                ''   every 17:1:14 using 3 with line lc 15 title 'twitterescaped.json', \
                ''   every 17:1:15 using 3 with line lc 16 title 'update-center.json', \
                ''   every 17:1:16 using 3 with line lc 17 title '<average>.json'
