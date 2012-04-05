#!/bin/bash
set -e

OUTFILE=SeasideBase-Unstable-1430.zip

mkdir -p package-cache

rm -rf tmp && mkdir tmp
unzip -qjo -d tmp Pharo-Unstable-1.4.zip

for f in st/before.st st/seaside3-base.st st/seaside3-ajp.st st/seaside3-zinc.st st/rfb.st st/after.st; do
    cat "$f" >>tmp/seasidebase.st
    echo "!" >>tmp/seasidebase.st
done

(cd tmp; ln -s ../package-cache .; ./CogVM -nodisplay -nosound Pharo-1.4.image seasidebase.st)

if [ -f tmp/crash.dmp ]; then
    echo "Build failed: VM crashed"
    exit 1
fi
if [ -f tmp/PharoDebug.log ] && grep -q THERE_BE_DRAGONS_HERE tmp/PharoDebug.log; then
    echo "Build failed: Execution failed"
    exit 1
fi

rm -rf tmp/package-cache
rm -f tmp/PharoDebug.log
echo "Seaside 3.0 as loaded in seasidebase.st" >> tmp/VERSION
zip -qrj "$OUTFILE" tmp/*
rm -rf tmp
echo "$OUTFILE created"
