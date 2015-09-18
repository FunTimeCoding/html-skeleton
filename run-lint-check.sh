#!/bin/sh -e

if [ "${1}" = "--ci-mode" ]; then
    shift
    mkdir -p build/log
    tidy5 -config tidy5.conf -file build/log/tidy5-lint.log web/index.html
else
    tidy5 -config tidy5.conf web/index.html
fi
