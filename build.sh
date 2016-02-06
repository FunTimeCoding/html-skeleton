#!/bin/sh -e

./clean.sh
./reformat-html.sh --ci-mode
./run-lint-check.sh --ci-mode
