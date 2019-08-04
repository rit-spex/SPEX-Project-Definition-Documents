#!/bin/bash

# Use this shell script to compile your TeX file using a Docker container
# instead of your local machine. We use the docker image from 
# https://hub.docker.com/r/dxjoke/tectonic-docker/

# tectonic ➞ bibtex ➞ tectonic× 2
docker run --mount src=$(1),target=/usr/src/tex,type=bind dxjoke/tectonic-docker /bin/sh -c \
"tectonic --keep-intermediates --reruns 0 $(2).tex; \
bibtex $(2); \
tectonic $(2).tex; tectonic $(2).tex"
