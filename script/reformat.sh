#!/bin/sh -e

if [ "${1}" = --ci-mode ]; then
    shift
    mkdir -p build/log
    tidy -config tidy.conf -modify -file build/log/tidy-reformat.log web/index.html
else
    tidy -config tidy.conf -modify web/index.html
fi
