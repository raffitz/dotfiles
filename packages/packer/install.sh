#!/bin/sh

echo "Cloning packer..."

git clone https://aur.archlinux.org/packer.git


echo "Entering packer directory..."

cd packer


echo "Making package..."

makepkg


echo "Installing package..."

sudo pacman -U *.pkg.tar.xz


echo "Exiting directory..."

cd ..


echo "Removing packer directory..."

rm -rf packer


echo "Installing AUR packages..."

packer -S $(cat packer-list)


