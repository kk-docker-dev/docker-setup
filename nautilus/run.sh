#docker run -it --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix klab/nautilus

#!/bin/bash
  
HOST_PATH=$HOME/__docker/natilus-simple

mkdir -p $HOST_PATH # Create volume to preserve firefox container data

docker run \
    -it --rm \
    -e DISPLAY=$DISPLAY \
    --name nautilus_simple \
    -v $HOST_PATH:/home/shanmugk \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
    --net=host klab_nautilus_simple
