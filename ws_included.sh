#!/bin/bash

wget https://raw.githubusercontent.com/EchoHowardLam/quick-ros-install/master/ros_install.sh && \
bash ros_install.sh $1 && \
cd ~ && mkdir -p catkin_ws/src && \
cat "source /opt/ros/$1/setup.bash" >> ~/.bashrc && \
cat "source ~/devel/setup.bash" >> ~/.bashrc && \
source ~/.bashrc ;
cd catkin_ws && catkin_make
