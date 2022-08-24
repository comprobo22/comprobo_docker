#!/bin/bash

echo "Make sure you have installed nvidia container toolkit"

docker build -t foxy_neato .
xhost +local:
# TODO: warning these ports would have to be updated if we use different ports to receive video and robot data (default UDP ports are 5000 and 7777, respectively)
docker run --gpus=all --privileged -it -p 5000:5000/udp -p 7777:7777/udp -e DISPLAY=$DISPLAY -e ROS_DOMAIN_ID=$ROS_DOMAIN_ID -v /tmp/.X11-unix:/tmp/.X11-unix foxy_neato
