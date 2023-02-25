#!/bin/sh

sudo ip link set can0 type can bitrate 1000000
sudo ifconfig can0 up

 /usr/local/bin/mjpg_streamer -i "input_uvc.so -r 1280x720 -f 15" -o "output_http.so -p 8080 -w /usr/local/share/mjpg-streamer/www"
