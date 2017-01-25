# dotfiles
My ghetto dotfiles repo

## Target Platform
The target platform is an Arch Linux OS running on a Raspberry Pi.

## Instalation

### Required packages

To install all packages included in the Arch repositories, the following is needed:

> cd packages

> ./install.sh

### zsh + zim

My shell of choice is _zsh_. It is recommended that the user in question have it as default shell.

To configure it as I would, the following is needed:

> cd zim

> ./install.zsh

### Further configurations

The configuration files for the remaining packages and utilities can be sent to their respective places through the deploy script.

> cd files

> ./deploy.sh

