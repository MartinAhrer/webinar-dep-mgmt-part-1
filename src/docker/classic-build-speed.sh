#!/usr/bin/env bash
source clone-hellowhale.sh
pushd hellowhale/
#tag::build[]
export DOCKER_BUILDKIT=0
docker builder prune -af > /dev/null
docker image prune -af > /dev/null
time docker build -t martinahrer/hellowhale .
#end::build[]
popd
