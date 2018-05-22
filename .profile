#!/bin/sh

xloadimage -onroot -fullscreen ~/.settings/bg.jpeg

numlockx on

[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap

xscreensaver -no-splash &
