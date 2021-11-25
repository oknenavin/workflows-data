set terminal svg dashed noenhanced size 1200,600 font ',14' background rgb 'white'

set title TITLE font ',19'
set ylabel 'Throughput (MB/s)' font ',19'
set xlabel 'Time' font ',19'

set format x ''
set grid ytics

set output OUTPUT.'-read.svg'

plot INPUT.'.data'   every 17:1:0  using 3 smooth acsplines with line dt 1 lw 2 lc              0 title 'blns.json', \
                ''   every 17:1:1  using 3 smooth acsplines with line dt 1 lw 2 lc              1 title 'emoji.json', \
                ''   every 17:1:2  using 3 smooth acsplines with line dt 1 lw 2 lc              2 title 'apache_builds.json', \
                ''   every 17:1:3  using 3 smooth acsplines with line dt 1 lw 2 lc              3 title 'canada.json', \
                ''   every 17:1:4  using 3 smooth acsplines with line dt 1 lw 2 lc              4 title 'citm_catalog.json', \
                ''   every 17:1:5  using 3 smooth acsplines with line dt 1 lw 2 lc              5 title 'github_events.json', \
                ''   every 17:1:6  using 3 smooth acsplines with line dt 1 lw 2 lc              6 title 'gsoc-2018.json', \
                ''   every 17:1:7  using 3 smooth acsplines with line dt 1 lw 2 lc              7 title 'instruments.json', \
                ''   every 17:1:8  using 3 smooth acsplines with line dt 4 lw 3 lc              0 title 'marine_ik.json', \
                ''   every 17:1:9  using 3 smooth acsplines with line dt 4 lw 3 lc              1 title 'mesh.json', \
                ''   every 17:1:10 using 3 smooth acsplines with line dt 4 lw 3 lc              2 title 'mesh.pretty.json', \
                ''   every 17:1:11 using 3 smooth acsplines with line dt 4 lw 3 lc              3 title 'numbers.json', \
                ''   every 17:1:12 using 3 smooth acsplines with line dt 4 lw 3 lc              4 title 'random.json', \
                ''   every 17:1:13 using 3 smooth acsplines with line dt 4 lw 3 lc              5 title 'twitter.json', \
                ''   every 17:1:14 using 3 smooth acsplines with line dt 4 lw 3 lc              6 title 'twitterescaped.json', \
                ''   every 17:1:15 using 3 smooth acsplines with line dt 4 lw 3 lc              7 title 'update-center.json', \
                ''   every 17:1:16 using 3 smooth acsplines with line dt 1 lw 3 lc rgb '#000000'  title '<average>.json'
