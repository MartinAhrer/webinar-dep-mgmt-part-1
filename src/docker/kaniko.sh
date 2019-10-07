#!/usr/bin/env bash
#tag::script[]
docker container run \
    -v $PWD/.:/workspace \
    -v ${PWD}/config.json:/kaniko/config.json \
    --env DOCKER_CONFIG=/kaniko \
    gcr.io/kaniko-project/executor:v0.9.0 \
    --dockerfile Dockerfile.pre-multistage \
    --no-push
#end::script[]