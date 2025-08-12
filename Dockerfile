# Use the official ROS Noetic base image
FROM ros:noetic-ros-base-focal

# Set the working directory
WORKDIR /opt

# Install necessary packages
RUN apt-get update && apt-get install -y \
    ros-noetic-xacro \
    ros-noetic-robot-state-publisher \
    ros-noetic-joint-state-publisher \
    && rm -rf /var/lib/apt/lists/*

COPY . /opt/barracuda-description

# Source the workspace on container start
CMD ["/bin/bash", "/opt/barracuda-description/entrypoint.sh"]
