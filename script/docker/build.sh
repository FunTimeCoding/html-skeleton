#!/bin/sh -e

docker images | grep --quiet funtimecoding/hypertext-skeleton && FOUND=true || FOUND=false

if [ "${FOUND}" = true ]; then
    docker rmi funtimecoding/hypertext-skeleton
fi

docker build --tag funtimecoding/hypertext-skeleton .
