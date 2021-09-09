#! /usr/bin/env bash

# docker build . --output type=local,dest=docker-build.log --progress plain --tag go-firehouse:1.0.0

docker build --progress plain --tag go-firehouse:1.0.0 . --no-cache > docker-build.log 2>&1
