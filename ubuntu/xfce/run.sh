#!/bin/bash

set -v
docker run \
  -it \
  -h docker \
  -p 5900:5900 \
  -v $HOME/Public:/data \
  -e RESOLUTION=1440x810 \
  --name klab_ubuntu_xfce \
  --security-opt seccomp=unconfined \
  --net=host klab_ubuntu_xfce
