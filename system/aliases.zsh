#!/bin/sh

#exa for ls and tree
alias ls='exa --icons --git' # ls
alias tree="exa --tree --level=2"

# bat for cat
alias cat='bat --theme="Solarized (dark)"'

alias t='tail -f'

alias grep="grep --color=auto"
alias duf="du -sh * | sort -hr"
alias less="less -r"

alias croot='cd "$(git rev-parse --show-toplevel)"'

# quick hack to make watch work with aliases
alias watch='watch '

# open, pbcopy and pbpaste on linux
if [ "$(uname -s)" != "Darwin" ]; then
  if [ -z "$(command -v pbcopy)" ]; then
    if [ -n "$(command -v xclip)" ]; then
      alias pbcopy="xclip -selection clipboard"
      alias pbpaste="xclip -selection clipboard -o"
    elif [ -n "$(command -v xsel)" ]; then
      alias pbcopy="xsel --clipboard --input"
      alias pbpaste="xsel --clipboard --output"
    fi
  fi
  if [ -e /usr/bin/xdg-open ]; then
    alias open="xdg-open"
  fi
fi
