#!/bin/bash

if [ -e $HOME/.local/share/jupyter/kernels ]
then
	echo "ERROR CREATE LINK JUPYTER KERNELS - kernels already exists!"
	exit
fi

mkdir -p $HOME/.local/share/jupyter
ln -s $PWD/kernels $HOME/.local/share/jupyter
