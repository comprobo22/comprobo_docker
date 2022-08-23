#!/bin/bash

docker build -t foxy_neato .
xhost +local:
# TODO: warning these ports would have to be updated if we use different ports to receive video and robot data (default UDP ports are 5000 and 7777, respectively)
docker run -it -p 5000:5000/udp -p 7777:7777/udp -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix foxy_neato
