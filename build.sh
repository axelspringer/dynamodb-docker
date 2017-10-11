#!/bin/bash

build() {
  VERSION=$1
  TAG=${VERSION}

# build
  echo Building axelspringer/dynamodb:${TAG}
    docker build \
      --compress \
      -t axelspringer/dynamodb:${TAG} \
      . || exit $?
}

#  DynamoDB version
build "latest"
