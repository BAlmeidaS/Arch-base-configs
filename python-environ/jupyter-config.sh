#!/bin/bash

if [ -e $HOME/.jupyter ]
then
	echo "ERROR CREATE LINK JUPYTER - .jupyter already exists on your home"
	exit
fi

ln -s $PWD/dot-jupyter $HOME
mv $HOME/dot-jupyter $HOME/.jupyter
