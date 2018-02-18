#!/bin/zsh

#==============
# Install Vim Plug
#==============

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#==============
# Variables
#==============
dotfiles_dir=/hassio-dotfiles
user_dir=/root

#==============
# Delete existing dot files and folders
#==============
rm -rf $user_dir/.vimrc > /dev/null 2>&1

#==============
# Create symlinks in the home folder
#==============
ln -sf $dotfiles_dir/vimrc $user_dir/.vimrc

#==============
# Install vim Plugins
#==============
vim +PlugInstall +qall
