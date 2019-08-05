#!/bin/bash

# Use this shell script to compile your TeX file using a Docker container
# instead of your local machine. We use the docker image from
# https://hub.docker.com/r/dxjoke/tectonic-docker/
#
# USAGE
# ./compile_with_tectonic.sh /path/to/document/directory main.tex
docker run -d --mount src="$1",target="/usr/src/tex",type=bind dxjoke/tectonic-docker tectonic $2
rm -f $1/*.aux $1/*.bbl $1/*.out
