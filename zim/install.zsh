#!/bin/zsh

# Clone repo:
git clone --recursive https://github.com/Eriner/zim.git ${ZDOTDIR:-${HOME}}/.zim

# Install zim:
setopt EXTENDED_GLOB
for template_file ( ${ZDOTDIR:-${HOME}}/.zim/templates/* ); do
	user_file="${ZDOTDIR:-${HOME}}/.${template_file:t}"
	touch ${user_file}
	( print -rn "$(<${template_file})$(<${user_file})" >! ${user_file} ) 2>/dev/null
done

# Clone theme:
git clone --recursive https://github.com/raffitz/simple-s.git ${ZDOTDIR:-${HOME}}/.ztheme

# Install theme:
sudo cp ${ZDOTDIR:-${HOME}}/.ztheme/prompt_simple-s_setup /usr/share/zsh/functions/Prompts

# Override .zimrc
cat .zimrc > ${ZDOTDIR:-${HOME}}/.zimrc

# Add stuff to .zshrc:

echo "export EDITOR=\"nvim\"\nexport VISUAL=\"nvim\"\n" >> ~/.zshrc
