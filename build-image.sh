#!/bin/bash

# fail on any error 
set -eu

# build the docker image
# putting the Dockerfile inside the folder and that folder name is $IMAGE_TAG
docker build -f $IMAGE_TAG/Dockerfile -t $IMAGE_TAG .