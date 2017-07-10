#!/bin/bash

mkdir -p tmp

BASEPATH=`pwd`
FILEPATH=./tmp/pkg-compressed.tar.gz
ENDPATH=./tmp/pkg

curl -L https://aur.archlinux.org/cgit/aur.git/snapshot/slack-desktop.tar.gz \
	--output $FILEPATH

mkdir -p $ENDPATH

tar -xvf $FILEPATH -C $ENDPATH --strip-components 1

cd $ENDPATH && makepkg -si --noconfirm && cd $BASEPATH

rm -rf ./tmp
