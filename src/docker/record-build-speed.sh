#!/usr/bin/env bash
BUILD_DIR=../../build

asciinema rec --overwrite --title='Docker build' --command="bash -c './classic-build-speed.sh'" ${BUILD_DIR}/asciinema/classic-build-speed.cast
asciinema rec --overwrite --title='BuildKit build' --command="bash -c './buildkit-build-speed.sh'" ${BUILD_DIR}/asciinema/buildkit-build-speed.cast
