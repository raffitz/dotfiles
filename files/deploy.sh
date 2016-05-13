#!/bin/sh

# Copy etc configs
sudo cp -r etc/* /etc/

# Copy home dotfiles
cp -r home/. ~/

# Clone repos
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


