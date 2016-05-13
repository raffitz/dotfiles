#!/bin/sh

# Copy etc configs
sudo cp -r etc/* /etc/

# Copy usr binaries, scripts and files
sudo cp -r usr/* /usr/

# Copy server data
sudo cp -r srv/* /srv/

# Copy gogs stuff
sudo chown -R gogs:gogs /srv/gogs

# Copy home dotfiles
cp -r home/. ~/

# Clone repos
while read in; do git clone --recursive $in ; done < git_repos

