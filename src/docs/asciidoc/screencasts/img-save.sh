#!/usr/bin/env bash
asciinema rec --overwrite --title='img save' --command="bash -c 'pushd src/docker; ./img-save.sh; popd'" ./src/docs/asciidoc/screencasts/img-save.cast