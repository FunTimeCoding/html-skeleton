#!/bin/sh -e

if [ "${1}" = "--ci-mode" ]; then
    shift
    mkdir -p build/log
    tidy5 -config tidy5.conf -modify -file build/log/tidy5-reformat.log web/index.html
else
    tidy5 -config tidy5.conf -modify web/index.html
fi
