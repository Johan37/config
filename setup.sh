#!/bin/bash

# Remove old config files
rm ~/.vimrc
rm -rf ~/.vim 2> /dev/null

# Create links to repo
ln -s $(pwd)/.vimrc ~/.vimrc
ln -s $(pwd)/.vim ~/.vim

