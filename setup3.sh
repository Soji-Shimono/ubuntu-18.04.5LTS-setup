#!bin/sh

#Install ROS packages
cd 
cd /catkin_ws/
git clone https://github.com/Soji-Shimono/vodyanoy_ns/tree/master/src
catkin_make

#Install systemd unit files
cd 
cd /etc/systemd/system

sudo wget raw.githubusercontent.com/Soji-Simono/Ubuntu-18.04.5LTS-setup/main/user_roslaunch.service
sudo wget raw.githubusercontent.com/Soji-Simono/Ubuntu-18.04.5LTS-setup/main/user_streamer_forward.service
sudo wget raw.githubusercontent.com/Soji-Simono/Ubuntu-18.04.5LTS-setup/main/user_streamer_downward.service

sudo systemctl enable user_roslaunch.service
sudo systemctl enable user_streamer_forward.service
sudo systemctl enable user_streamer_downward.service

#Install startup scripts
cd
cd mkdir src
cd src
sudo wget raw.githubusercontent.com/Soji-Simono/Ubuntu-18.04.5LTS-setup/main/src/startup

#Install mjpeg-streamer
sudo apt install cmake libjpeg8-dev
sudo apt install gcc g++
git clone https://github.com/jacksonliam/mjpg-streamer
cd mjpg-streamer/mjpg-streamer-experimental
make
sudo make install
