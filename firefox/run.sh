#!/bin/bash

HOST_PATH=$HOME/.local/docker/firefox-simple

mkdir -p $HOST_PATH # Create volume to preserve firefox container data

docker run \
	--rm \
	-e DISPLAY \
	--name firefox-simple \
	-v $HOST_PATH:/home/shanmugk \
	--net=host klab-firefox-simple
