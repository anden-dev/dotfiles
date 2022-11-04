#!/bin/sh
if command -v hub >/dev/null 2>&1; then
	alias git='hub'
fi

alias gl='git pull --prune'
alias glg="git log --graph --decorate --oneline --abbrev-commit"
alias glga="glg --all"
alias gp='git push origin HEAD'
alias gpa='git push origin --all'
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gb='git branch -v'
alias ga='git add'
alias gaa='git add -A'
alias gcm='git commit -m'
alias gcam='git commit -a -m'
alias gs='git status -sb'
alias gpr='gp && git pr'
alias glnext='git log --oneline $(git describe --tags --abbrev=0 @^)..@'

if command -v svu >/dev/null 2>&1; then
	alias gtpatch='echo `svu p`; git tag `svu p`'
	alias gtminor='echo `svu m`; git tag `svu m`'
fi

gi() {
	curl -s "https://www.gitignore.io/api/$*"
}

alias git='nocorrect git'

alias gcdroot='pushd $(git root)'

#alias gbda='git branch --no-color --merged | command grep -vE "^(\*|\s*(master|develop|dev)\s*$)" | command xargs -n 1 git branch -d'

alias gbda_merged='git branch --merged | grep -vE "(^\*|master|dev)" | xargs git branch -d'
# delete all local unmerged branches
alias gbda_unmerged='git branch --no-merged | grep -vE "(^\*|master|dev)" | xargs git branch -D'
# delete all local branches (merged and unmerged).
alias gbda_hold_my_beer='git branch | grep -vE "(^\*|master|dev)" | xargs git branch -D'
