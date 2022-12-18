#!/usr/bin/bash

# individual
for cxx in g++ clang++ msvc++ xcode; do
    # benchmarks
    gnuplot -e "INPUT='data/time/$cxx.head.default.json.node-s1'" -e "OUTPUT='figures/$cxx.head.default.json.node-s1'" src/benchmark-head-json-read.gp
    gnuplot -e "INPUT='data/time/$cxx.head.default.json.native-s1'" -e "OUTPUT='figures/$cxx.head.default.json.native-s1'" src/benchmark-head-json-read.gp
    gnuplot -e "INPUT='data/time/$cxx.head.fast_float.json.node-s1'" -e "OUTPUT='figures/$cxx.head.fast_float.json.node-s1'" src/benchmark-head-json-read.gp
    gnuplot -e "INPUT='data/time/$cxx.head.fast_float.json.native-s1'" -e "OUTPUT='figures/$cxx.head.fast_float.json.native-s1'" src/benchmark-head-json-read.gp
    gnuplot -e "INPUT='data/time/$cxx.head.default.json.node-s1'" -e "OUTPUT='figures/$cxx.head.default.json.node-s1'" src/benchmark-head-json-write.gp
    gnuplot -e "INPUT='data/time/$cxx.head.default.json.native-s1'" -e "OUTPUT='figures/$cxx.head.default.json.native-s1'" src/benchmark-head-json-write.gp
    gnuplot -e "INPUT='data/time/$cxx.head.fast_float.json.node-s1'" -e "OUTPUT='figures/$cxx.head.fast_float.json.node-s1'" src/benchmark-head-json-write.gp
    gnuplot -e "INPUT='data/time/$cxx.head.fast_float.json.native-s1'" -e "OUTPUT='figures/$cxx.head.fast_float.json.native-s1'" src/benchmark-head-json-write.gp
    # history
    gnuplot -e "INPUT='data/time/$cxx.tail.default.json.node-s1'" -e "OUTPUT='figures/$cxx.tail.default.json.node-s1'" -e "TITLE='read history / $cxx / node (default)'" src/benchmark-tail-json-read.gp
    gnuplot -e "INPUT='data/time/$cxx.tail.default.json.native-s1'" -e "OUTPUT='figures/$cxx.tail.default.json.native-s1'" -e "TITLE='read history / $cxx / native (default)'" src/benchmark-tail-json-read.gp
    gnuplot -e "INPUT='data/time/$cxx.tail.fast_float.json.node-s1'" -e "OUTPUT='figures/$cxx.tail.fast_float.json.node-s1'" -e "TITLE='read history / $cxx / node (fast_float)'" src/benchmark-tail-json-read.gp
    gnuplot -e "INPUT='data/time/$cxx.tail.fast_float.json.native-s1'" -e "OUTPUT='figures/$cxx.tail.fast_float.json.native-s1'" -e "TITLE='read history / $cxx / native (fast_float)'" src/benchmark-tail-json-read.gp
    gnuplot -e "INPUT='data/time/$cxx.tail.default.json.node-s1'" -e "OUTPUT='figures/$cxx.tail.default.json.node-s1'" -e "TITLE='write history / $cxx / node (default)'" src/benchmark-tail-json-write.gp
    gnuplot -e "INPUT='data/time/$cxx.tail.default.json.native-s1'" -e "OUTPUT='figures/$cxx.tail.default.json.native-s1'" -e "TITLE='write history / $cxx / native (default)'" src/benchmark-tail-json-write.gp
    gnuplot -e "INPUT='data/time/$cxx.tail.fast_float.json.node-s1'" -e "OUTPUT='figures/$cxx.tail.fast_float.json.node-s1'" -e "TITLE='write history / $cxx / node (fast_float)'" src/benchmark-tail-json-write.gp
    gnuplot -e "INPUT='data/time/$cxx.tail.fast_float.json.native-s1'" -e "OUTPUT='figures/$cxx.tail.fast_float.json.native-s1'" -e "TITLE='write history / $cxx / native (fast_float)'" src/benchmark-tail-json-write.gp
    # average
    gnuplot -e "INPUT='data/time/$cxx.tail.default.json.node-s1'" -e "OUTPUT='figures/$cxx.tail.default.json.node-s1'" -e "TITLE='average read / $cxx / node (default)'" src/benchmark-average-json-read.gp
    gnuplot -e "INPUT='data/time/$cxx.tail.default.json.native-s1'" -e "OUTPUT='figures/$cxx.tail.default.json.native-s1'" -e "TITLE='average read / $cxx / native (default)'" src/benchmark-average-json-read.gp
    gnuplot -e "INPUT='data/time/$cxx.tail.fast_float.json.node-s1'" -e "OUTPUT='figures/$cxx.tail.fast_float.json.node-s1'" -e "TITLE='average read / $cxx / node (fast_float)'" src/benchmark-average-json-read.gp
    gnuplot -e "INPUT='data/time/$cxx.tail.fast_float.json.native-s1'" -e "OUTPUT='figures/$cxx.tail.fast_float.json.native-s1'" -e "TITLE='average read / $cxx / native (fast_float)'" src/benchmark-average-json-read.gp
    gnuplot -e "INPUT='data/time/$cxx.tail.default.json.node-s1'" -e "OUTPUT='figures/$cxx.tail.default.json.node-s1'" -e "TITLE='average write / $cxx / node (default)'" src/benchmark-average-json-write.gp
    gnuplot -e "INPUT='data/time/$cxx.tail.default.json.native-s1'" -e "OUTPUT='figures/$cxx.tail.default.json.native-s1'" -e "TITLE='average write / $cxx / native (default)'" src/benchmark-average-json-write.gp
    gnuplot -e "INPUT='data/time/$cxx.tail.fast_float.json.node-s1'" -e "OUTPUT='figures/$cxx.tail.fast_float.json.node-s1'" -e "TITLE='average write / $cxx / node (fast_float)'" src/benchmark-average-json-write.gp
    gnuplot -e "INPUT='data/time/$cxx.tail.fast_float.json.native-s1'" -e "OUTPUT='figures/$cxx.tail.fast_float.json.native-s1'" -e "TITLE='average write / $cxx / native (fast_float)'" src/benchmark-average-json-write.gp
done
for cxx in g++ clang++; do
    # space
    gnuplot -e "INPUT='data/space/$cxx.head.default.json'" -e "OUTPUT='figures/$cxx.head.default.json'" src/benchmark-space-head.gp
    gnuplot -e "INPUT='data/space/$cxx.tail.default.json'" -e "OUTPUT='figures/$cxx.tail.default.json'" src/benchmark-space-tail.gp
done

# cross
gnuplot -e "INPUT='data/time/head.default.json.node-s1'" -e "OUTPUT='figures/cross.head.default.json.node-s1'" -e "TITLE='read / cross / node (default)'" src/benchmark-cross-head-json-read.gp
gnuplot -e "INPUT='data/time/head.default.json.native-s1'" -e "OUTPUT='figures/cross.head.default.json.native-s1'" -e "TITLE='read / cross / native (default)'" src/benchmark-cross-head-json-read.gp
gnuplot -e "INPUT='data/time/head.fast_float.json.node-s1'" -e "OUTPUT='figures/cross.head.fast_float.json.node-s1'" -e "TITLE='read / cross / node (fast_float)'" src/benchmark-cross-head-json-read.gp
gnuplot -e "INPUT='data/time/head.fast_float.json.native-s1'" -e "OUTPUT='figures/cross.head.fast_float.json.native-s1'" -e "TITLE='read / cross / native (fast_float)'" src/benchmark-cross-head-json-read.gp
gnuplot -e "INPUT='data/time/head.default.json.node-s1'" -e "OUTPUT='figures/cross.head.default.json.node-s1'" -e "TITLE='write / cross / node (default)'" src/benchmark-cross-head-json-write.gp
gnuplot -e "INPUT='data/time/head.default.json.native-s1'" -e "OUTPUT='figures/cross.head.default.json.native-s1'" -e "TITLE='write / cross / native (default)'" src/benchmark-cross-head-json-write.gp
gnuplot -e "INPUT='data/time/head.fast_float.json.node-s1'" -e "OUTPUT='figures/cross.head.fast_float.json.node-s1'" -e "TITLE='write / cross / node (fast_float)'" src/benchmark-cross-head-json-write.gp
gnuplot -e "INPUT='data/time/head.fast_float.json.native-s1'" -e "OUTPUT='figures/cross.head.fast_float.json.native-s1'" -e "TITLE='write / cross / native (fast_float)'" src/benchmark-cross-head-json-write.gp
