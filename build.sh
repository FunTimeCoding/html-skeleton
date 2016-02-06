#!/bin/sh -e

./clean.sh
./reformat-html.sh --ci-mode
./run-style-check.sh --ci-mode
