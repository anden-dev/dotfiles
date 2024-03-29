#exa for ls and tree
# bat for cat
alias t='tail -f'
alias grep="grep --color=auto"
alias duf="du -sh * | sort -hr"
alias less="less -r"

# quick hack to make watch work with aliases
alias watch='watch '
alias yy='pbpcopy'
alias pp='pbpaste'
alias jj='pbpaste | jsonpp | pbcopy'
alias jjj='pbpaste | jsonpp'

# FUNCTIONS -------------------------------------------------------------------

function take {
  mkdir -p $1
  cd $1
}
