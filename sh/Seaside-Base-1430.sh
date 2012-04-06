#!/bin/bash
# Bootstrap Seaside 3.0 basics
set -e

# Some useful vars for later
SCRIPTDIR="`dirname $0`"
PKGNAME="`basename $0 .sh`"
TSTNAME="${PKGNAME}-Tests"
IMGNAME=Pharo-1.4.image
PKGPARENT=Pharo-Base-1.4

# Output and test results we will generate
OUTFILE="${PKGNAME}.zip"
TSTFILE="${TSTNAME}.zip"

# Using a new build directory, unpack the upstream bits.
rm -rf build && mkdir build
unzip -qjo -d build "${PKGPARENT}.zip"
echo "${PKGNAME} as loaded by ${PKGNAME}.st" >> build/VERSIONS

# Build the base image
"$SCRIPTDIR/runscripts.sh" "${PKGNAME}" "$IMGNAME" st/seaside3-base.st st/seaside3-ajp.st st/seaside3-zinc.st st/rfb.st
zip -qrj "$OUTFILE" build/*
echo "$OUTFILE created"

# Build the test image
echo "${TSTNAME} as loaded by ${TSTNAME}.st" >> build/VERSIONS
"$SCRIPTDIR/runscripts.sh" "${TSTNAME}" "$IMGNAME" \
    st/buildtools.st \
    st/seaside3-base-tests.st \
    st/pharo14-runtests.st \
    st/seaside3-runtests.st
zip -qrj "$TSTFILE" build/*
echo "$TSTFILE created"
