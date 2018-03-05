#!/bin/sh

echo "Cloning yay..."

git clone https://aur.archlinux.org/yay.git


echo "Entering yay directory..."

cd yay


echo "Making package..."

makepkg


echo "Installing package..."

sudo pacman -U *.pkg.tar.xz


echo "Exiting directory..."

cd ..


echo "Removing yay directory..."

rm -rf yay


echo "Installing AUR packages..."

yay -S $(cat yay-list)


