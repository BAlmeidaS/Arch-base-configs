#!/bin/bash

sudo apt install bison -y

zsh < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
gvm install go1.4 -B

gvm use go1.4
export GOROOT_BOOTSTRAP=$GOROOT
gvm install go1.13
gvm use go1.13
