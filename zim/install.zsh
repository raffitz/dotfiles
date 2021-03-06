#!/bin/zsh

OWD=$(pwd)
# Clone repo:
ZIMDIR="${ZDOTDIR:-${HOME}}/.zim"
if [ -d ${ZIMDIR} ]; then
	cd ${ZIMDIR}
	git pull
	cd ${OWD}
else
	git clone --recursive https://github.com/Eriner/zim.git ${ZIMDIR}
fi

# Install zim:
setopt EXTENDED_GLOB
for template_file ( ${ZDOTDIR:-${HOME}}/.zim/templates/* ); do
	user_file="${ZDOTDIR:-${HOME}}/.${template_file:t}"
	touch ${user_file}
	( print -rn "$(<${template_file})$(<${user_file})" >! ${user_file} ) 2>/dev/null
done

# Clone theme:
THEMEDIR="${ZDOTDIR:-${HOME}}/.ztheme"
if [ -d ${THEMEDIR} ]; then
	cd ${THEMEDIR}
	git pull
	cd ${OWD}
else
	git clone --recursive https://github.com/raffitz/simple-s.git ${THEMEDIR}
fi

# Install theme:
sudo cp ${ZDOTDIR:-${HOME}}/.ztheme/prompt_simple-s_setup /usr/share/zsh/functions/Prompts

# Copy config files to $HOME
cp -a home/. ~

