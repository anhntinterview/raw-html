#!/bin/bash

# fail on any error 
set -eu

# login to your docker hub account
# cat ~/my_password.txt | sudo docker login --username anhntserver --password-stdin
docker login --username $DOCKER_HUB_USERNAME --password $DOCKER_HUB_PASSWORD

# use the docker tag command to give the image a new name
# sudo docker tag html-raw anhntserver/221021-anhntserver-repository-docker-hub-name-01
docker tag $IMAGE_TAG $DOCKER_HUB_USERNAME/$DOCKER_HUB_REPO_NAME

# push the image to your docker hub repository
# sudo docker push anhntserver/221021-anhntserver-repository-docker-hub-name-01
docker push $DOCKER_HUB_USERNAME/$DOCKER_HUB_REPO_NAME