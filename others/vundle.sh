#!/bin/bash

rm -rf $HOME/.vim/bundle/Vundle.vim
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim

vim +PluginInstall +qall

rm -f $HOME/.vimrc
ln -s `pwd`/.vimrc $HOME/

