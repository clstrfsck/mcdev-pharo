#!/bin/bash
# Bootstrap Seaside 3.0 basics
set -e

# Some useful vars for later
SCRIPTDIR="`dirname $0`"
PKGNAME="`basename $0 .sh`"
TSTNAME="${PKGNAME}-Tests"
IMGNAME=Pharo-1.4.image
PKGPARENT=Seaside-Base-1430-Tests

# Output and test results we will generate
OUTFILE="${PKGNAME}.zip"
TSTFILE="${TSTNAME}.zip"

# Using a new build directory, unpack the upstream bits.
rm -rf build && mkdir build && unzip -qjo -d build "${PKGPARENT}.zip"
rm -f build/*-Test.xml
echo "${PKGNAME} as loaded by ${PKGNAME}.st" >> build/VERSIONS

# Build the base image
"$SCRIPTDIR/runscripts.sh" "${PKGNAME}" "$IMGNAME" \
    st/omnibrowser.st \
    st/seaside3-dev.st \
    st/seaside3-extra-dev.st
rm -f "$OUTFILE" && zip -qj "$OUTFILE" build/*
echo "$OUTFILE created"

# Build the test image
echo "${TSTNAME} as loaded by ${TSTNAME}.st" >> build/VERSIONS
"$SCRIPTDIR/runscripts.sh" "${TSTNAME}" "$IMGNAME" \
    st/buildtools.st \
    st/seaside3-dev-tests.st \
    st/omnibrowser-tests.st \
    st/pharo-runtests.st
rm -f "$TSTFILE" && zip -qj "$TSTFILE" build/*
echo "$TSTFILE created"
