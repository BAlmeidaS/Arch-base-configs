#!/bin/bash

BASEPATH=`pwd`

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

rm -rf $HOME/.oh-my-zsh

#changing to my oh-my-zsh fork
git clone https://github.com/BAlmeidaS/oh-my-zsh $HOME/.oh-my-zsh
cd $HOME/.oh-my-zsh && git fetch --all && git checkout my-own

if [ -e $HOME/.zshrc ]
then
	echo "ERROR CREATE LINK ZSHRC - .zshrc already exists"
	exit
fi

ln -s $BASEPATH/.zshrc $HOME/
