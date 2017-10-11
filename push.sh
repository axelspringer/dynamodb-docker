#!/bin/bash

push() {
  VERSION=$1
  TAG=${VERSION}

# base
  echo
  echo Pushing axelspringer/dynamodb:${TAG}
  docker push axelspringer/dynamodb:${TAG} || exit $?
}

# login docker before push
docker login -u="$DOCKER_USERNAME" -p="$DOCKER_PASSWORD"

#    Mesos version
push "latest"
