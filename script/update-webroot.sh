#!/bin/sh -e

rm -rf web/js/jquery
mkdir -p web/js/jquery
cp node_modules/jquery/dist/* web/js/jquery

rm -rf web/js/bootstrap web/css/bootstrap
mkdir -p web/js/bootstrap web/css/bootstrap
cp node_modules/bootstrap/dist/css/* web/css/bootstrap
cp node_modules/bootstrap/dist/js/* web/js/bootstrap
