### `CXON` benchmarks / compiler figures

--------------------------------------------------------------------------------

These benchmarks run on [`GitHub`](https://github.com/oknenavin/cxon/actions/workflows/benchmarks.yml).  
The code can be found in `CXON` repository under `test/src/json/json.node.time.*`.  
The benchmark data is commonly used and is currently not described here, but information about it can
be found elsewhere - e.g. [`boost/json`](https://www.boost.org/doc/libs/1_75_0/libs/json/doc/html/json/benchmarks.html).
The files can be found in `CXON` repository under `test/data/json`.

- [`g++`](compiler.g++.md)
- [`clang++`](compiler.clang++.md)
- [`msvc++`](compiler.msvc++.md)
- [`xcode`](compiler.xcode.md)

The benchmark results demonstrate that
[_what you do use is just as efficient as what you could reasonably write by hand_](https://en.cppreference.com/mwiki/index.php?title=cpp/language/Zero-overhead_principle&oldid=118760).
