

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
export LD_PRELOAD="/usr/\$LIB/libstderred.so${LD_PRELOAD:+:$LD_PRELOAD}"

