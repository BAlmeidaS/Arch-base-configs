#!/bin/bash

BASEPATH=$(cd $(dirname $BASH_SOURCE) && pwd )

ln -sf $BASEPATH/.gitignore $HOME/

git config --global core.excludesfile $HOME/.gitignore

