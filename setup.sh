#!/bin/bash

#Get the script directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#Create symlinks
ln -s "$DIR"/.vimrc ~/.vimrc
ln -s "$DIR"/.bash_profile ~/.bash_profile
ln -s "$DIR"/.tmux.conf ~/.tmux.conf

#Create directories
mkdir ~/.vim
mkdir ~/.vim/bundle

#Install vundle
echo "installing Vundle"
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
