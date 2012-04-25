#!/bin/bash
# Load MonticelloFileTree into Seaside Dev
set -e

# Some useful vars for later
SCRIPTDIR="`dirname $0`"
PKGNAME="`basename $0 .sh`"
TSTNAME="${PKGNAME}-Tests"
IMGNAME=Pharo-1.4.image
PKGPARENT=Seaside-Dev-1430-Tests

# Output and test results we will generate
PKGFILE="${PKGNAME}.zip"
TSTFILE="${TSTNAME}.zip"

# Using a new build directory, unpack the upstream bits.
rm -rf build && mkdir build && unzip -qjo -d build "${PKGPARENT}.zip"
rm -f build/*-Test.xml
echo "${PKGNAME} as loaded by ${PKGNAME}.st" >> build/VERSIONS

# Clone fresh filetree repo
rm -rf filetree && git clone --depth 1 -b pharo1.3 git://github.com/dalehenrich/filetree.git

# Build the base image
"$SCRIPTDIR/runscripts.sh" "$PKGNAME" "$IMGNAME" \
    st/filetree.st
rm -f "$PKGFILE" && zip -qj "$PKGFILE" build/*
echo "$PKGFILE created"

# Build the test image
echo "${TSTNAME} as loaded by ${TSTNAME}.st" >> build/VERSIONS
"$SCRIPTDIR/runscripts.sh" "$TSTNAME" "$IMGNAME" \
    st/filetree-tests.st
rm -f "$TSTFILE" && zip -qj "$TSTFILE" build/*
"$SCRIPTDIR/runscripts.sh" "$TSTNAME" "$IMGNAME" \
    st/pharo-runtests.st
zip -qj "$TSTFILE" build/*.log build/*.xml
echo "$TSTFILE created"

## END ##
