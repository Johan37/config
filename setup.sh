#!/bin/bash

# Remove old config files
rm ~/.bashrc
rm ~/.vimrc
rm -rf ~/.vim 2> /dev/null

# Create links to repo
ln -s $(pwd)/.bashrc ~/.bashrc
ln -s $(pwd)/.vimrc ~/.vimrc
ln -s $(pwd)/.vim ~/.vim
ln -s $(pwd)/.tmux.conf ~/.tmux.conf

