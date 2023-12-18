#!/usr/bin/env bash

dir=${PWD##*/}          # to assign to a variable
dir=${dir:-/}        # to correct for the case where PWD=/

if [ "$dir" = 'Olympic' ]; then
  docker build \
  -t olympic-dev-container \
  -f "$PWD"/docker/dev-container/Dockerfile \
  .
else
  echo "This script needs to be ran from the root directory: Olympic/"
fi

