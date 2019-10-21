#!/bin/bash
set -e
images=$(echo $IMAGES | tr " " "\n")

for image in $images
do
    pack build $image --builder cloudfoundry/cnb:bionic
    if $PUSH_IMAGE
    then
        docker push $image
    fi
done