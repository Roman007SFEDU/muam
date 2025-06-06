FROM ros:humble-ros-base
RUN apt update && apt upgrade -y
RUN apt install -y python3-colcon-common-extensions git
RUN apt-get update && apt-get install -y \
 ros-humble-cv-bridge \
 ros-humble-image-tools \
 ros-humble-rqt-image-view \
 python3-opencv \
 python3-numpy \
 libboost-python-dev \
 && rm -rf /var/lib/apt/lists/*
WORKDIR /dataset
