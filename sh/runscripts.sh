#!/bin/bash
set -e

if [ -z "$1" ]; then
    echo "Must supply a package name as the first argument"
    exit 1
fi
PKGNAME="$1"

if [ -z "$2" ]; then
    echo "Must supply an image name as the second argment"
    exit 1
fi
IMGNAME="$2"

if [ -z "$3" ]; then
    echo "Must supply one or more Smalltalk scripts to run"
    exit 1
fi
shift 2
SCRIPTS="$*"

for f in st/before.st $SCRIPTS st/after.st; do
    cat "$f" >>"build/${PKGNAME}.st"
    echo "!" >>"build/${PKGNAME}.st"
done

echo "Building package $PKGNAME"
(
    cd build
    ln -s ../package-cache
    ./CogVM -nodisplay -nosound "${IMGNAME}" "${PKGNAME}.st" | tee "${PKGNAME}.log"
    rm -f package-cache
)

if [ -f build/crash.dmp ]; then
    echo "Build failed: VM crashed"
    exit 1
fi
if [ -f build/PharoDebug.log ] && grep -q THERE_BE_DRAGONS_HERE build/PharoDebug.log; then
    echo "Build failed: Execution failed; check build/PharoDebug.log"
    exit 1
fi
