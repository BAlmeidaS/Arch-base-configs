#! /bin/bash

echo "Do you want to install base packages?"
echo "yes - no(default)"

read answer

if [ $answer == yes ]; then
  echo "##########"
  echo "run base packages"
  bash ./pacman/base-pkgs.sh
else
  echo "##########"
  echo "base packages canceled"
fi

echo "##########"
echo "configure git"
bash ./others/git-base-configs.sh
bash ./others/gitignore.sh

echo "##########"
echo "configure vim"
bash ./others/vundle.sh

echo "##########"
echo "some configs"
bash ./AUR/ncurses.sh
bash ./AUR/haroopad.sh
bash ./AUR/openh264.sh

echo "##########"
echo "python and auxiliars"
bash ./others/base-pips.sh
bash ./others/awscli.sh

echo "##########"
echo "some configs"
bash ./others/downgrade-openssl.sh

echo "##########"
echo "install zsh"
bash ./others/oh-my-zsh.sh

echo "##########"
echo "install gvm"
bash ./others/gvm.sh

echo "##########"
echo "others"
bash ./AUR/spotify.sh
bash ./AUR/slack.sh
bash ./AUR/postman.sh

echo "##########"
echo "youcompleteme"
bash ./AUR/youcompleteme.sh

echo "##########"
echo "rbenv + ruby-build.sh"
bash ./AUR/ruby-build.sh
bash ./AUR/rbenv.sh

echo "##########"
echo "vim commands"
echo "install all Vundles Plugins"
vim -c :PluginInstall -c :qa

echo "##########"
echo "configuring autocompleteme"
BASEPATH=$(cd $(dirname $BASH_SOURCE) && pwd )
cd $HOME/.vim/bundle/YouCompleteMe && ./install.py --all && cd $BASEPATH
