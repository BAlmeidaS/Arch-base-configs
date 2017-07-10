#!/bin/bash

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
	echo "Not running as root! =["
	exit
fi

#install openssh
pacman -Syu --noconfirm openssh

#install terminator
pacman -Syu --noconfirm terminator
