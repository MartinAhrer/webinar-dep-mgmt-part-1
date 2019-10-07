#!/usr/bin/env bash
#tag::script[]
docker container run --rm --name img \
    -v ${PWD}:/source --workdir /source \
    --security-opt seccomp=unconfined \
    --security-opt apparmor=unconfined \
    r.j3ss.co/img \
    build -f Dockerfile.pre-multistage -t continuousdelivery:img ./
#end::script[]
