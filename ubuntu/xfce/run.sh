#!/bin/bash

set -v
docker run \
  -it \
  -h docker \
  -p 5900:5900 \
  --name klab-xfce \
  -v $HOME/Public:/data \
  -e RESOLUTION=1440x810 \
  --security-opt seccomp=unconfined \
  --net=host klab-ubuntu-xfce
