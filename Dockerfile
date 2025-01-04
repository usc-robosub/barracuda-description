# Use the official ROS Noetic base image
FROM ros:noetic-ros-base-focal

# Install necessary packages
RUN apt-get update && apt-get install -y \
    ros-noetic-ros-base \
    && rm -rf /var/lib/apt/lists/*

# Source the workspace on container start
CMD ["/bin/bash", "/opt/barracuda-imu/entrypoint.sh"]