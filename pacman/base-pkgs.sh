#!/bin/bash

echo "$(whoami)"

[ "$UID" -eq 0 ] || exec sudo "$0" "$@"


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

#install docker-compose
pacman -Syu --noconfirm docker-compose

#install terraform
pacman -Syu --noconfirm terraform

#install openssl
pacman -Syu --noconfirm openssl-1.0

#install wget
pacman -Syu --noconfirm wget

#install tig
pacman -Syu --noconfirm tig

#install ack
pacman -Syu --noconfirm ack

#install gcc5
pacman -Syu --noconfirm gcc5

#install virtualenvwrapper
pacman -Syu --noconfirm --force python-virtualenvwrapper

#install tree
pacman -Syu --noconfirm --force tree

#install chromium
pacman -Syu --noconfirm --force chromium

#install gimp
pacman -Sy --noconfirm --force gimp

#install xclip
pacman -Sy --noconfirm --force xclip
