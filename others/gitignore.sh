#!/bin/bash

rm -f $HOME/.gitignore
ln -s `pwd`/.gitignore $HOME/

git config --global core.excludesfile $HOME/.gitignore

