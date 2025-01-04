# Use the official ROS Noetic base image
FROM ros:noetic-ros-base-focal

COPY . /opt/barracuda-description

# Set the working directory
WORKDIR /opt

# Install necessary packages
RUN apt-get update && apt-get install -y \
    ros-noetic-xacro \
    ros-noetic-robot-state-publisher \
    && rm -rf /var/lib/apt/lists/*

# Source the workspace on container start
CMD ["/bin/bash", "/opt/barracuda-description/entrypoint.sh"]