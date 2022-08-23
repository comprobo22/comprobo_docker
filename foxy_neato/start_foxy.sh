#!/bin/bash

docker build -t foxy_neato .
xhost +local:
docker run -it --network=host -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix foxy_neato
