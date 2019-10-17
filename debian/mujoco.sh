#!/bin/bash

sudo add-apt-repository ppa:jamesh/snap-support

sudo apt update
sudo apt install libosmesa6-dev -y
sudo apt install patchelf -y

sudo apt-get install -y python-dev pkg-config

sudo apt-get install -y libavformat-dev libavcodec-dev libavdevice-dev libavutil-dev libswscale-dev libavresample-dev libavfilter-dev

