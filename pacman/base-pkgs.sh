#!/bin/bash

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
	echo "Not running as root! =["
	exit
fi

#install openssh
pacman -Syu --noconfirm openssh

#install terminator
pacman -Syu --noconfirm terminator

#install zsh
pacman -Syu --noconfirm zsh

#install python-pip
pacman -Syu --noconfirm python-pip

#install jq
pacman -Syu --noconfirm jq

#install cmake
pacman -Syu --noconfirm cmake

#install docker
pacman -Syu --noconfirm docker
systemctl enable docker.service
sudo gpasswd -a $USER docker
