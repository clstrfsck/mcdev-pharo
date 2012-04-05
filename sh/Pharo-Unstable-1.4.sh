#!/bin/bash
set -e

PHUPSTREAM=https://ci.lille.inria.fr/pharo/job
PHPROJ="Pharo%201.4"

VMFILE=Pharo-Unstable-VM.zip

OUTFILE=Pharo-Unstable-1.4.zip

function get_buildnum {
    # First argument is job name
    # Delete everything but numbers using tr to avoid malicious input
    curl -fs "$PHUPSTREAM/$1/lastSuccessfulBuild/buildNumber" | tr -dc 0123456789
}

function get_buildfile {
    # First argument is output file, second is job name
    # third is build number and fourth is artifact name
    if [ ! -e "$1" ]; then
        echo "Fetching $2/$3/$4 -> $1"
	rm -f "$1.tmp"
        curl -fs -o "$1.tmp" "$PHUPSTREAM/$2/$3/artifact/$4"
        mv -f "$1.tmp" "$1"
    else
	echo "$1 is up to date"
    fi
}

echo "Checking current $PHPROJ build number"
PBLD=`get_buildnum "$PHPROJ"`
PURL="$PHUPSTREAM/$PHPROJ/$PBLD/api/xml?xpath=/*/description"
PREV=`curl -fs "${PURL}" | cut -f2 -d " " | tr -dc 0123456789`
echo "Build number $PBLD revision $PREV"
PHFILE="Pharo-1.4-${PBLD}-${PREV}.zip"
get_buildfile "$PHFILE" "$PHPROJ" ${PBLD} Pharo-1.4.zip

rm -rf tmp && mkdir tmp
unzip -qjo -d tmp "$PHFILE"
unzip -qjo -d tmp "$VMFILE"
echo "Pharo 1.4 image build $PBLD rev $PREV from $PHUPSTREAM/$PHPROJ" >> tmp/VERSION
zip -qrj "$OUTFILE" tmp/*
rm -rf tmp
echo "$OUTFILE created"
