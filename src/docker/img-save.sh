#!/usr/bin/env bash

#tag::debug[]
docker image build -f Dockerfile.img-shell -t img:debug ./
#end::debug[]

#tag::script[]
docker container run --rm --name img \
    -v ${PWD}:/source --workdir /source \
    --security-opt seccomp=unconfined --security-opt apparmor=unconfined \
    --entrypoint /bin/bash \
    img:debug -c "img build -f Dockerfile.pre-multistage -t continuousdelivery:img ./ && img save --output /source/continuousdelivery.tar continuousdelivery:img"
#end::script[]