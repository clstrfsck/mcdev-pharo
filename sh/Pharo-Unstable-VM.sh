#!/bin/bash
set -e

VMUPSTREAM=https://ci.lille.inria.fr/pharo/job
VMPROJ="Cog-Unix"

SRCURL=https://gforge.inria.fr/frs/download.php/24391/PharoV10.sources.zip
SRCFILE=PharoV10.sources.zip

OUTFILE=Pharo-Unstable-VM.zip

function get_buildnum {
    # First argument is job name
    # Delete everything but numbers using tr to avoid malicious input
    curl -fs "$VMUPSTREAM/$1/lastSuccessfulBuild/buildNumber" | tr -dc 0123456789
}

function get_buildfile {
    # First argument is output file, second is job name
    # third is build number and fourth is artifact name
    if [ ! -e "$1" ]; then
        echo "Fetching $2/$3/$4 -> $1"
	rm -f "$1.tmp"
        curl -fs -o "$1.tmp" "$VMUPSTREAM/$2/$3/artifact/$4"
        mv -f "$1.tmp" "$1"
    else
	echo "$1 is up to date"
    fi
}

echo "Checking current $VMPROJ build number"
BLDNUM=`get_buildnum "$VMPROJ"`
VMFILE=cog-linux-${BLDNUM}.zip
get_buildfile "$VMFILE" "$VMPROJ" ${BLDNUM} Cog.zip

if [ ! -f "$SRCFILE" ]; then
    echo "Fetching $SRCFILE"
    curl -fs -o "$SRCFILE" "$SRCURL"
else
    echo "$SRCFILE is up to date"
fi

rm -rf tmp && mkdir tmp
unzip -qj -d tmp "$VMFILE"
unzip -qj -d tmp PharoV10.sources.zip PharoV10.sources
echo "Cog VM build $BLDNUM from $VMUPSTREAM/$VMPROJ" > tmp/VERSION
echo "Pharo V1.0 Sources from $SRCURL" >> tmp/VERSION
zip -qrj "$OUTFILE" tmp/*
rm -rf tmp
echo "$OUTFILE created"
