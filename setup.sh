#!/bin/zsh

#==============
# Install PlugVim
#==============

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#==============
# Variables
#==============
dotfiles_dir=~/hassio-dotfiles

#==============
# Delete existing dot files and folders
#==============
rm -rf ~/.vim > /dev/null 2>&1
rm -rf ~/.vimrc > /dev/null 2>&1

#==============
# Create symlinks in the home folder
#==============
ln -sf $dotfiles_dir/vimrc ~/.vimrc
