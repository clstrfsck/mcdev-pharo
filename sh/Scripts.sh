#!/bin/bash
set -e -x
rm -f Scripts.zip
zip -qr Scripts.zip . -i cs/\* sh/\* st/\*
: Done
