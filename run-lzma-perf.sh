#!/bin/sh

java -cp build/classes:lib/lzma-java/\*:lib/japex/\* \
 perf.ManualPerfComparison  testdata/calgary/bib
