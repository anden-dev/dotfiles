#!/bin/sh
alias reload!='exec "$SHELL" -l'

alias zshrc='${=EDITOR} ~/.zshrc' # Quick access to the ~/.zshrc file

# Command line head / tail shortcuts
alias -g H='| head'
alias -g T='| tail'
alias -g G='| grep'
alias -g L="| less"
alias -g M="| most"
alias -g LL="2>&1 | less"
alias -g CA="2>&1 | cat -A"
alias -g NE="2> /dev/null"
alias -g NUL="> /dev/null 2>&1"
alias -g P="2>&1| pygmentize -l pytb"

alias dud='du -d 1 -h'
alias duf='du -sh *'
alias fd='find . -type d -name'
alias ff='find . -type f -name'

alias h='history'
alias hgrep="fc -El 0 | grep"
alias help='man'
alias p='ps -f'
alias sortnr='sort -n -r'
alias unexport='unset'

# Make zsh know about hosts already accessed by SSH
zstyle -e ':completion:*:(ssh|scp|sftp|rsh|rsync):hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'

alias mplayer="mpv --really-quiet"
alias fortune_me="fortune $HOME/fortune/vodafone | lolcat"

if [[ "${OS}" == "Darwin" ]]; then
  alias grep="ggrep"
fi


alias picture_me="/Users/Engl.Andreas/.git-templates/hooks/post-commit"
alias record_me="terminalizer record me"
alias render_me="terminalizer render me"

alias stackwatch='watch $HOME/bin/stackstatus.sh </dev/null'
alias set_proxy="source ~/bin/proxy"
alias unset_proxy="unset https_proxy; unset http_proxy; unset no_proxy; unset NO_PROXY"

alias record_me="terminalizer record me"
alias render_me="terminalizer render me"

alias list_cfn_stack_usage.sh="list_cfn_stack_usage.sh|lolcat"

alias get_latest_python='pyenv install --list | grep -E " ([0-9]+)\.([0-9]+)\.([0-9]+)$" | tail -n 1'
