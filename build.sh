#!/bin/sh -e

./clear-cache.sh
./reformat-html.sh --ci-mode
./run-lint-check.sh --ci-mode
