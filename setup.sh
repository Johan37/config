#!/bin/bash

# Remove old config files
#rm -f ~/.bashrc
rm -f ~/.vimrc
rm -rf ~/.vim 2> /dev/null

#Create useful dirs
#mkdir -p ~/projects

# Create links to repo
cat $(pwd)/.bashrc >> ~/.bashrc
ln -s $(pwd)/.vimrc ~/.vimrc
ln -s $(pwd)/.vim ~/.vim
#ln -s $(pwd)/.tmux.conf ~/.tmux.conf

