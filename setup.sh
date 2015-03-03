#!/bin/bash

#Get the script directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#Create symlinks
ln -s "$DIR"/.vimrc ~/.vimrc
ln -s "$DIR"/.bash_profile ~/.bash_profile
ln -s "$DIR"/.tmux.conf ~/.tmux.conf
ln -s "$DIR"/.aliases ~/.aliases

#Create directories
mkdir ~/.vim
mkdir ~/.vim/bundle

#Install vundle
echo "installing Vundle"
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

#Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#Install silver searcher
brew install the_silver_searcher

#Install git completion
brew install git bash-completion
