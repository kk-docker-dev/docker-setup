#!/bin/bash
  
HOST_PATH=$HOME/.local/docker/xfe

# Shared volume
mkdir -p $HOST_PATH

docker run \
    -it --rm \
    --name klab-xfe \
    -e DISPLAY=$DISPLAY \
	-v $HOME/Public:/data \
    -v $HOST_PATH:/home/shanmugk \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
    --net=host klab-ubuntu-xfe
