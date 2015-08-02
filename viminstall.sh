#!/bin/bash

# let us see whats going on (@echo off in dos)
set -x

# install necessary packages
sudo pacman -S gvim

# download and install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# installs powerline fonts

# installs plugins from vimrc
vim +PlugInstall +qall
