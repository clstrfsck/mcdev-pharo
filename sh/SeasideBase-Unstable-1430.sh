#!/bin/bash
set -e

mkdir -p package-cache

rm -rf tmp && mkdir tmp
unzip -qjo -d tmp Pharo-Unstable-1.4.zip

for f in st/before.st st/seasidebase.st st/after.st; do
    cat "$f" >>tmp/seasidebase.st
    echo "!" >>tmp/seasidebase.st
done

(cd tmp; ln -s ../package-cache .; ./CogVM -nodisplay -nosound Pharo-1.4.image seasidebase.st)

if [ -f tmp/crash.dmp ]; then
    echo "Build failed: VM crashed"
    exit 1
fi
if [ -f tmp/PharoDebug.log ]; then
    echo "Build failed: Execution failed"
    exit 1
fi

echo "Seaside 3.0 as loaded in seasidebase.st" >> tmp/VERSION
rm -rf tmp/package-cache
