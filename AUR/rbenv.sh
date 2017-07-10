#!/bin/bash

source ./ruby-build.sh

mkdir -p tmp

BASEPATH=`pwd`
FILEPATH=./tmp/google-chrome.tar.gz
ENDPATH=./tmp/chrome

curl -L https://aur.archlinux.org/cgit/aur.git/snapshot/rbenv.tar.gz \
	--output $FILEPATH

mkdir -p $ENDPATH

tar -xvf $FILEPATH -C $ENDPATH --strip-components 1

cd $ENDPATH && makepkg -si --noconfirm && cd $BASEPATH

rm -rf ./tmp
