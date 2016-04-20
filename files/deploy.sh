#!/bin/sh

sudo cp -r etc/* /etc/

sudo cp -r usr/* /usr/

sudo cp -r srv/* /srv/

sudo chown -R gogs:gogs /srv/gogs

cp -r home/. ~/

