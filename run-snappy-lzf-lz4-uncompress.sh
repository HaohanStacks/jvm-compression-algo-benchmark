#!/bin/sh

echo "About to run uncompress test for All impls on Calgary corpus files"

java -server -cp lib/japex/\* \
 -Xmx400M \
 -Djava.awt.headless=true \
 -Djapex.runsPerDriver=1 \
 -Djapex.warmupTime=5 \
 -Djapex.runTime=20 \
 -Djapex.numberOfThreads=1 \
 -Djapex.reportsDirectory=reports/calgary-uncompress \
 -Djapex.plotGroupSize=6 \
 -Djapex.inputDir="testdata/calgary" \
 com.sun.japex.Japex \
 cfg/tests-snappy-lzf-lz4-calgary-uncompress.xml

echo "Done!";

