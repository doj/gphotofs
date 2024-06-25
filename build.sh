#!/bin/bash
#
# build the photofs code from a github checkout

if [ "$1" = clean -o "$1" = distclean ] ; then
    make distclean
    exit 0
fi

set -e
autoreconf -i
./configure
make -j
