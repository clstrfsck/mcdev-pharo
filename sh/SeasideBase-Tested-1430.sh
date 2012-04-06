#!/bin/bash
set -e

PKGPARENT=SeasideBase-Unstable-1430
PKGNAME=SeasideBase-Tested-1430
PKGSCRIPTS="st/buildtools.st st/seaside3-base-tests.st st/seaside3-runtests.st"

OUTFILE="${PKGNAME}.zip"
IMGNAME=Pharo-1.4.image

mkdir -p package-cache

rm -rf tmp && mkdir tmp
unzip -qjo -d tmp "${PKGPARENT}.zip"

for f in st/before.st $PKGSCRIPTS st/after.st; do
    cat "$f" >>"tmp/${PKGNAME}.st"
    echo "!" >>"tmp/${PKGNAME}.st"
done

(cd tmp; ln -s ../package-cache .; ./CogVM -nodisplay -nosound "${IMGNAME}" "${PKGNAME}.st")

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
echo "${PKGNAME} as loaded by ${PKGNAME}.st" >> tmp/VERSION
zip -qrj "$OUTFILE" tmp/*
echo "$OUTFILE created"
