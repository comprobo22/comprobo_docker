from osrf/ros:foxy-desktop
ENV TURTLEBOT3_MODEL=waffle_pi
RUN apt-get update && apt-get install -y ros-foxy-gazebo-ros-pkgs \
	ros-foxy-turtlebot3-msgs \
	ros-foxy-turtlebot3 \
	ros-foxy-dynamixel-sdk \
	ros-foxy-nav2-bringup \
	ros-foxy-navigation2 \
	ros-foxy-cartographer-ros \
	ros-foxy-cartographer \
	libgstreamer1.0-0 \
	gstreamer1.0-plugins-base \
	gstreamer1.0-plugins-good \
	gstreamer1.0-plugins-bad \
	gstreamer1.0-plugins-ugly \
	gstreamer1.0-libav gstreamer1.0-tools \
	gstreamer1.0-x \
	gstreamer1.0-alsa \
	gstreamer1.0-gl \
	gstreamer1.0-gtk3 \
	gstreamer1.0-qt5 \
	gstreamer1.0-pulseaudio \
	libgstreamer-plugins-base1.0-dev

RUN /bin/bash -c "source /opt/ros/foxy/setup.bash && mkdir -p /root/ros2_ws/src && cd /root/ros2_ws/src && git clone https://github.com/comprobo22/neato_node2 && git clone https://github.com/comprobo22/neato2_interfaces && git clone -b foxy-devel https://github.com/ROBOTIS-GIT/turtlebot3_simulations.git && git clone https://github.com/clydemcqueen/gscam2 && git clone https://github.com/ptrmu/ros2_shared.git -b master && cd /root/ros2_ws && colcon build --symlink-install && cd /root/ros2_ws && colcon build --symlink-install"

RUN /bin/bash -c "echo \"source /root/ros2_ws/install/setup.bash\" >> /root/.bashrc"
CMD ["/bin/bash"]
