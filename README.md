# dotfiles
My ghetto dotfiles repo

## Target Platform
The target platform is an Arch Linux laptop PC with the base and base-devel package groups installed.

The main difference from the desktop branch is the removal of numlockx from .xprofile.

## Instalation

### Required packages

To install all packages included in the Arch repositories, the following is needed:

> cd packages

> ./install.sh

Further, the _xf86-video_ package associated to your graphics drivers is required as well.

### Required AUR packages

To install the _packer_ front-end, and subsequently install other AUR packages, the following is needed:

> cd packer

> ./install.sh

### zsh + prezto

My shell of choice is _zsh_. It is recommended that the user in question have it as default shell.

To configure it as I would, the following is needed:

> cd prezto

> ./install.zsh

> ./patch.sh

### Awesome Window Manager

To configure the Awesome Window Manager with my theme of choice, the following is needed:

> cd awesome

> ./configure.sh

### Further configurations

The configuration files for the remaining packages and utilities can be sent to its respective places through the deploy script.

> ./deploy.sh
