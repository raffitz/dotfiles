#!/bin/sh

if [ -d ~/.zprezto ]; then
	cp zprezto.patch ~/.zprezto
	cd ~/.zprezto
	git apply zprezto.patch
	rm zprezto.patch
else
	echo "Please install prezto first, please :)"
fi
