#!/usr/bin/env sh
# xhost +local:docker

nvidia-docker run \
              -v /tmp/.X11-unix:/tmp/.X11-unix \
              -v $HOME/.ssh:/home/user/.ssh \
              -e DISPLAY=unix$DISPLAY \
              --device /dev/dri \
              $@
