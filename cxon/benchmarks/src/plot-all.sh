#!/usr/bin/bash

# individual
for cxx in g++ clang++ msvc++ xcode; do
    # benchmarks
    for set in s1 s2; do
        gnuplot -e "INPUT='data/time/$cxx.head.default.json.node-$set'" -e "OUTPUT='figures/$cxx.head.default.json.node-$set'" src/benchmark-head-json-read.gp
        gnuplot -e "INPUT='data/time/$cxx.head.default.json.native-$set'" -e "OUTPUT='figures/$cxx.head.default.json.native-$set'" src/benchmark-head-json-read.gp
        gnuplot -e "INPUT='data/time/$cxx.head.fast_float.json.node-$set'" -e "OUTPUT='figures/$cxx.head.fast_float.json.node-$set'" src/benchmark-head-json-read.gp
        gnuplot -e "INPUT='data/time/$cxx.head.fast_float.json.native-$set'" -e "OUTPUT='figures/$cxx.head.fast_float.json.native-$set'" src/benchmark-head-json-read.gp
        gnuplot -e "INPUT='data/time/$cxx.head.default.json.node-$set'" -e "OUTPUT='figures/$cxx.head.default.json.node-$set'" src/benchmark-head-json-write.gp
        gnuplot -e "INPUT='data/time/$cxx.head.default.json.native-$set'" -e "OUTPUT='figures/$cxx.head.default.json.native-$set'" src/benchmark-head-json-write.gp
        gnuplot -e "INPUT='data/time/$cxx.head.fast_float.json.node-$set'" -e "OUTPUT='figures/$cxx.head.fast_float.json.node-$set'" src/benchmark-head-json-write.gp
        gnuplot -e "INPUT='data/time/$cxx.head.fast_float.json.native-$set'" -e "OUTPUT='figures/$cxx.head.fast_float.json.native-$set'" src/benchmark-head-json-write.gp
        # history
        gnuplot -e "INPUT='data/time/$cxx.tail.default.json.node-$set'" -e "OUTPUT='figures/$cxx.tail.default.json.node-$set'" -e "TITLE='read history / $cxx / node (default)'" src/benchmark-tail-json-read.$set.gp
        gnuplot -e "INPUT='data/time/$cxx.tail.default.json.native-$set'" -e "OUTPUT='figures/$cxx.tail.default.json.native-$set'" -e "TITLE='read history / $cxx / native (default)'" src/benchmark-tail-json-read.$set.gp
        gnuplot -e "INPUT='data/time/$cxx.tail.fast_float.json.node-$set'" -e "OUTPUT='figures/$cxx.tail.fast_float.json.node-$set'" -e "TITLE='read history / $cxx / node (boost::charconv)'" src/benchmark-tail-json-read.$set.gp
        gnuplot -e "INPUT='data/time/$cxx.tail.fast_float.json.native-$set'" -e "OUTPUT='figures/$cxx.tail.fast_float.json.native-$set'" -e "TITLE='read history / $cxx / native (boost::charconv)'" src/benchmark-tail-json-read.$set.gp
        gnuplot -e "INPUT='data/time/$cxx.tail.default.json.node-$set'" -e "OUTPUT='figures/$cxx.tail.default.json.node-$set'" -e "TITLE='write history / $cxx / node (default)'" src/benchmark-tail-json-write.$set.gp
        gnuplot -e "INPUT='data/time/$cxx.tail.default.json.native-$set'" -e "OUTPUT='figures/$cxx.tail.default.json.native-$set'" -e "TITLE='write history / $cxx / native (default)'" src/benchmark-tail-json-write.$set.gp
        gnuplot -e "INPUT='data/time/$cxx.tail.fast_float.json.node-$set'" -e "OUTPUT='figures/$cxx.tail.fast_float.json.node-$set'" -e "TITLE='write history / $cxx / node (boost::charconv)'" src/benchmark-tail-json-write.$set.gp
        gnuplot -e "INPUT='data/time/$cxx.tail.fast_float.json.native-$set'" -e "OUTPUT='figures/$cxx.tail.fast_float.json.native-$set'" -e "TITLE='write history / $cxx / native (boost::charconv)'" src/benchmark-tail-json-write.$set.gp
        # average
        gnuplot -e "INPUT='data/time/$cxx.tail.default.json.node-$set'" -e "OUTPUT='figures/$cxx.tail.default.json.node-$set'" -e "TITLE='average read / $cxx / node (default)'" src/benchmark-average-json-read.gp
        gnuplot -e "INPUT='data/time/$cxx.tail.default.json.native-$set'" -e "OUTPUT='figures/$cxx.tail.default.json.native-$set'" -e "TITLE='average read / $cxx / native (default)'" src/benchmark-average-json-read.gp
        gnuplot -e "INPUT='data/time/$cxx.tail.fast_float.json.node-$set'" -e "OUTPUT='figures/$cxx.tail.fast_float.json.node-$set'" -e "TITLE='average read / $cxx / node (boost::charconv)'" src/benchmark-average-json-read.gp
        gnuplot -e "INPUT='data/time/$cxx.tail.fast_float.json.native-$set'" -e "OUTPUT='figures/$cxx.tail.fast_float.json.native-$set'" -e "TITLE='average read / $cxx / native (boost::charconv)'" src/benchmark-average-json-read.gp
        gnuplot -e "INPUT='data/time/$cxx.tail.default.json.node-$set'" -e "OUTPUT='figures/$cxx.tail.default.json.node-$set'" -e "TITLE='average write / $cxx / node (default)'" src/benchmark-average-json-write.gp
        gnuplot -e "INPUT='data/time/$cxx.tail.default.json.native-$set'" -e "OUTPUT='figures/$cxx.tail.default.json.native-$set'" -e "TITLE='average write / $cxx / native (default)'" src/benchmark-average-json-write.gp
        gnuplot -e "INPUT='data/time/$cxx.tail.fast_float.json.node-$set'" -e "OUTPUT='figures/$cxx.tail.fast_float.json.node-$set'" -e "TITLE='average write / $cxx / node (boost::charconv)'" src/benchmark-average-json-write.gp
        gnuplot -e "INPUT='data/time/$cxx.tail.fast_float.json.native-$set'" -e "OUTPUT='figures/$cxx.tail.fast_float.json.native-$set'" -e "TITLE='average write / $cxx / native (boost::charconv)'" src/benchmark-average-json-write.gp
    done
done
for cxx in g++ clang++; do
    # space
    gnuplot -e "INPUT='data/space/$cxx.head.default.json'" -e "OUTPUT='figures/$cxx.head.default.json'" src/benchmark-space-head.gp
    gnuplot -e "INPUT='data/space/$cxx.tail.default.json'" -e "OUTPUT='figures/$cxx.tail.default.json'" src/benchmark-space-tail.gp
done

# cross
for set in s1 s2; do
    gnuplot -e "INPUT='data/time/head.default.json.node-$set'" -e "OUTPUT='figures/cross.head.default.json.node-$set'" -e "TITLE='read / cross / node (default)'" src/benchmark-cross-head-json-read.gp
    gnuplot -e "INPUT='data/time/head.default.json.native-$set'" -e "OUTPUT='figures/cross.head.default.json.native-$set'" -e "TITLE='read / cross / native (default)'" src/benchmark-cross-head-json-read.gp
    gnuplot -e "INPUT='data/time/head.fast_float.json.node-$set'" -e "OUTPUT='figures/cross.head.fast_float.json.node-$set'" -e "TITLE='read / cross / node (boost::charconv)'" src/benchmark-cross-head-json-read.gp
    gnuplot -e "INPUT='data/time/head.fast_float.json.native-$set'" -e "OUTPUT='figures/cross.head.fast_float.json.native-$set'" -e "TITLE='read / cross / native (boost::charconv)'" src/benchmark-cross-head-json-read.gp
    gnuplot -e "INPUT='data/time/head.default.json.node-$set'" -e "OUTPUT='figures/cross.head.default.json.node-$set'" -e "TITLE='write / cross / node (default)'" src/benchmark-cross-head-json-write.gp
    gnuplot -e "INPUT='data/time/head.default.json.native-$set'" -e "OUTPUT='figures/cross.head.default.json.native-$set'" -e "TITLE='write / cross / native (default)'" src/benchmark-cross-head-json-write.gp
    gnuplot -e "INPUT='data/time/head.fast_float.json.node-$set'" -e "OUTPUT='figures/cross.head.fast_float.json.node-$set'" -e "TITLE='write / cross / node (boost::charconv)'" src/benchmark-cross-head-json-write.gp
    gnuplot -e "INPUT='data/time/head.fast_float.json.native-$set'" -e "OUTPUT='figures/cross.head.fast_float.json.native-$set'" -e "TITLE='write / cross / native (boost::charconv)'" src/benchmark-cross-head-json-write.gp
done
