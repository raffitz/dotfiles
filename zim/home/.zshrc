

#
# User configuration sourced by interactive shells
#

# Source zim
if [[ -s ${ZDOTDIR:-${HOME}}/.zim/init.zsh ]]; then
  source ${ZDOTDIR:-${HOME}}/.zim/init.zsh
fi

export EDITOR="nvim"
export VISUAL="nvim"
export GPG_TTY=$(tty)

alias hl="highlight -O xterm256"

show () {
	hl $@ | less -R -N
}

