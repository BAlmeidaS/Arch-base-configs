#!/bin/bash

mkdir -p tmp

BASEPATH=`pwd`
FILEPATH=./tmp/google-chrome.tar.gz
ENDPATH=./tmp/chrome

curl -L https://aur.archlinux.org/cgit/aur.git/snapshot/google-chrome.tar.gz \
	--output $FILEPATH

mkdir -p $ENDPATH

tar -xvf $FILEPATH -C $ENDPATH --strip-components 1

cd $ENDPATH && makepkg -si --noconfirm && cd $BASEPATH

rm -rf ./tmp
