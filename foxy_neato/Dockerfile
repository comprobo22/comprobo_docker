from osrf/ros:foxy-desktop
ENV TURTLEBOT3_MODEL=waffle_pi
RUN apt-get update && apt-get install -y ros-foxy-gazebo-ros-pkgs \
	ros-foxy-nav2-bringup \
	ros-foxy-navigation2 \
	ros-foxy-camera-info-manager \
	ros-foxy-cartographer-ros \
	ros-foxy-cartographer \
	gstreamer1.0-plugins-good \
	gstreamer1.0-plugins-bad \
	gstreamer1.0-plugins-ugly \
	gstreamer1.0-libav \
	gstreamer1.0-tools \
	gstreamer1.0-x \
	gstreamer1.0-alsa \
	gstreamer1.0-gl \
	gstreamer1.0-gtk3 \
	gstreamer1.0-qt5 \
	gstreamer1.0-pulseaudio \
        ros-foxy-gscam \
	python3-pip \
	hping3

RUN pip3 install opencv-python
RUN setcap cap_net_raw+ep /usr/sbin/hping3

RUN /bin/bash -c "source /opt/ros/foxy/setup.bash && mkdir -p /root/ros2_ws/src && cd /root/ros2_ws/src && git clone https://github.com/comprobo22/neato_packages && cd /root/ros2_ws && colcon build --symlink-install"

RUN /bin/bash -c "echo \"source /root/ros2_ws/install/setup.bash\" >> /root/.bashrc"
CMD ["/bin/bash"]
