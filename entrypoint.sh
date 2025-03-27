#!/usr/bin/bash
source /opt/ros/noetic/setup.bash

# Build & Source catkin_ws
cd barracuda-description/catkin_ws
catkin_make
source devel/setup.bash

# Source ros and catkin_ws in bashrc
echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
echo "source /opt/barracuda-description/catkin_ws/devel/setup.bash" >> ~/.bashrc

roslaunch barracuda_description barracuda.launch