set terminal svg dashed noenhanced size 1200,600 font ',14' background rgb 'white'

set title TITLE font ',17'
set ylabel 'Throughput (MB/s)' font ',17'
set xlabel 'Time' font ',17'

set format x ''
set grid ytics

set output OUTPUT.'-write.svg'
plot INPUT.'.data'   every 17::2  using 10 smooth acsplines with line dt 1 lw 2 lc 0 title 'apache_builds.json', \
                ''   every 17::3  using 10 smooth acsplines with line dt 1 lw 2 lc 1 title 'canada.json', \
                ''   every 17::4  using 10 smooth acsplines with line dt 1 lw 2 lc 2 title 'citm_catalog.json', \
                ''   every 17::5  using 10 smooth acsplines with line dt 1 lw 2 lc 3 title 'github_events.json', \
                ''   every 17::7  using 10 smooth acsplines with line dt 1 lw 2 lc 4 title 'instruments.json', \
                ''   every 17::12 using 10 smooth acsplines with line dt 1 lw 2 lc 5 title 'random.json', \
                ''   every 17::16 using 10 smooth acsplines with line dt 3 lw 3 lc 6 title '<average>.json'
