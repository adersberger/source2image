#!/bin/bash
set -e
images=$(echo $IMAGES | tr " " "\n")

for image in $images
do
    s2i --incremental=true build . springboot-java $image
    if $PUSH_IMAGE
    then
        docker push $image
    fi
done