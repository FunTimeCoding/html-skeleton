#!/bin/sh -e
# This tool can be used to initialise the template after making a fresh copy to get started quickly.
# The goal is to make it as easy as possible to create programs that allow easy testing and continuous integration.

CAMEL=$(echo "${1}" | grep -E '^([A-Z][a-z0-9]+){2,}$') || CAMEL=""

if [ "${CAMEL}" = "" ]; then
    echo "Usage: ${0} UpperCamelCaseName"

    exit 1
fi

OPERATING_SYSTEM=$(uname)

if [ "${OPERATING_SYSTEM}" = "Darwin" ]; then
    SED="gsed"
    FIND="gfind"
else
    SED="sed"
    FIND="find"
fi

${FIND} . -type f -regextype posix-extended ! -regex '^.*/(build|vendor|\.git|\.idea)/.*$' -exec sh -c '${1} -i -e "s/HtmlSkeleton/${2}/g" ${3}' '_' "${SED}" "${CAMEL}" '{}' \;
rm init-project.sh
echo "Done. Files were edited and moved using git. Review those changes."
