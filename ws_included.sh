#!/bin/bash

wget https://raw.githubusercontent.com/EchoHowardLam/quick-ros-install/master/ros_install.sh && \
bash ros_install.sh $1 && \
mkdir -p ~/catkin_ws/src && \
echo "source /opt/ros/$1/setup.bash" >> ~/.bashrc && \
echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc
bash -i -c 'cd ~/catkin_ws && catkin_make'
