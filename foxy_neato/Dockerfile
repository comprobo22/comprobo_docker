from osrf/ros:foxy-desktop
RUN /bin/bash -c "source /opt/ros/foxy/setup.bash && mkdir -p /root/ros2_ws/src && cd /root/ros2_ws && git clone https://github.com/comprobo22/neato_node2 && git clone https://github.com/comprobo22/neato2_interfaces && cd /root/ros2_ws && colcon build --symlink-install"
CMD ["/bin/bash"]
