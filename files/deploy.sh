#!/bin/sh

# Copy etc configs
sudo cp -r etc/* /etc/

# Copy usr binaries, scripts and files
sudo cp -r usr/* /usr/

# Copy home dotfiles
cp -r home/. ~/

# Clone repos
while read in; do git clone --recursive $in ; done < git_repos

