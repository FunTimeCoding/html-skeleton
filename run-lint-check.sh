#!/bin/sh -e

if [ "${1}" = "--ci-mode" ]; then
    shift
    mkdir -p build/log
    tidy -config tidy.conf -file build/log/tidy-lint.log web/index.html
else
    tidy -config tidy.conf web/index.html
fi
