#!/bin/bash

if [ -e $HOME/.ipython ]
then
	echo "ERROR CREATE LINK IPYTHON - .ipython already exists on your home"
	exit
fi

ln -s $PWD/dot-ipython $HOME
mv $HOME/dot-ipython $HOME/.ipython
