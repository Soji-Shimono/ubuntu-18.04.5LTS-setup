#!/bin/bash

source /opt/ros/melodic/setup.bash
source ~/catkin_ws/devel/setup.bash

sudo ip link set can0 type can bitrate 1000000 restart-ms 10
sudo ifconfig can0 up

sudo pigpiod

roslaunch servertest sevrer.launch
