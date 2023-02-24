#!bin/sh

#package update
sudo apt update
sudo apt upgrade

#network setting
cd /etc/netplan
sudo rm 50-cloud-init.yaml
sudo wget https://raw.githubusercontent.com/Soji-Shimono/ubuntu-18.04.5LTS-setup/main/50-cloud-init.yaml
sudo netplan apply

#CAN setting
cd /boot/firmware
sudo rm usercfg.txt
sudo wget https://raw.githubusercontent.com/Soji-Shimono/ubuntu-18.04.5LTS-setup/main/usercfg.txt

sudo apt install can-utils
#sudo ip link set can0 type can0 bitrate 1000000
#sudo ip link set can0 up
