#!/bin/sh

# Interrupt script on first failure
set -e

# Copy etc configs
echo "Copying /etc/ ..."
sudo cp -r etc/* /etc/

# Copy home dotfiles
echo "Copying $HOME/ ..."
cp -r home/. ~/

# Clone repos
echo "Cloning git repos..."
while read in; do
	arr=($in)
	CURDIR=$(pwd)
	cd $HOME
	if [ -d ${arr[1]} ]; then
		echo ${arr[1]}
		cd ${arr[1]}
		git pull
	else
		git clone --recursive $in
	fi
	cd $CURDIR ; done < git_repos


