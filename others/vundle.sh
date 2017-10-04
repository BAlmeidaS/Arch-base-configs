#!/bin/bash

BASEPATH=$(cd $(dirname $BASH_SOURCE) && pwd )

rm -rf $HOME/.vim/bundle/Vundle.vim
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim

vim +PluginInstall +qall

ln -sf $BASEPATH/.vimrc $HOME/

