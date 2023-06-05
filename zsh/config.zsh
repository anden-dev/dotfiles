export LSCOLORS='exfxcxdxbxegedabagacad'
export CLICOLOR=true
export SAML2AWS_DISABLE_KEYCHAIN=1
fpath=($DOTFILES/functions $fpath)

autoload -U "$DOTFILES"/functions/*(:t)
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search

# don't nice background tasks
setopt NO_BG_NICE
setopt NO_HUP
setopt NO_BEEP
# allow functions to have local options
setopt LOCAL_OPTIONS
# allow functions to have local traps
setopt LOCAL_TRAPS

# setopt PROMPT_SUBST
# setopt CORRECT
# setopt COMPLETE_IN_WORD

export HISTFILE=~/.zsh_history
# Ref: https://www.soberkoder.com/better-zsh-history/
export HISTFILESIZE=1000000000
export HISTSIZE=1000000000
# # add timestamps to history
#setopt EXTENDED_HISTORY

#setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

#setopt HIST_IGNORE_ALL_DUPS
#setopt HIST_REDUCE_BLANKS
#setopt HIST_IGNORE_DUPS
#setopt HIST_IGNORE_SPACE
#setopt HIST_VERIFY
#setopt HIST_EXPIRE_DUPS_FIRST

# cd by typing directory name if it's not a command
setopt auto_cd
# autocorrect commands
setopt correct_all
setopt auto_list                                                            # automatically list choices on ambiguous completion
setopt auto_menu                                                            # automatically use menu completion
setopt always_to_end                                                        # move cursor to end if word had one match
zstyle ':completion:*' menu select                                          # select completions with arrow keys
zstyle ':completion:*' group-name ''                                        # group results by category
zstyle ':completion:::::' completer _expand _complete _ignored _approximate # enable approximate matches for completion
# dont ask for confirmation in rm globs*
setopt RM_STAR_SILENT

zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

# emacs mode
# I always enter vi mode by mistake
bindkey -e

# fuzzy find: start to type
bindkey "$terminfo[kcuu1]" up-line-or-beginning-search
bindkey "$terminfo[kcud1]" down-line-or-beginning-search
bindkey "$terminfo[cuu1]" up-line-or-beginning-search
bindkey "$terminfo[cud1]" down-line-or-beginning-search

# backward and forward word with option+left/right
bindkey '^[^[[D' backward-word
bindkey '^[b' backward-word
bindkey '^[^[[C' forward-word
bindkey '^[f' forward-word

# to to the beggining/end of line with fn+left/right or home/end
bindkey "${terminfo[khome]}" beginning-of-line
bindkey '^[[H' beginning-of-line
bindkey "${terminfo[kend]}" end-of-line
bindkey '^[[F' end-of-line

# delete char with backspaces and delete
bindkey '^[[3~' delete-char
bindkey '^?' backward-delete-char

# delete word with ctrl+backspace
bindkey '^[[3;5~' backward-delete-word
# bindkey '^[[3~' backward-delete-word

# search history with fzf if installed, default otherwise
if test -d /usr/local/opt/fzf/shell; then
  # shellcheck disable=SC1091
  . /usr/local/opt/fzf/shell/key-bindings.zsh
else
  bindkey '^R' history-incremental-search-backward
fi
