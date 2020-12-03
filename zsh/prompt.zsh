#!/bin/zsh
export REPORTTIME=10

# Prompt
SPACESHIP_TIME_SHOW="true"
SPACESHIP_PROMPT_ADD_NEWLINE="true"
# bolt SPACESHIP_CHAR_SYMBOL=" \uf0e7"
SPACESHIP_CHAR_SYMBOL=" \uf054"
# gitlab SPACESHIP_CHAR_PREFIX="\uf296"
# apple 1 SPACESHIP_CHAR_PREFIX="\ue711"
SPACESHIP_CHAR_PREFIX="\uf179"
SPACESHIP_CHAR_SUFFIX=(" ")
SPACESHIP_CHAR_COLOR_SUCCESS="yellow"
SPACESHIP_USER_SHOW="always"
SPACESHIP_PROMPT_DEFAULT_PREFIX="$USER"
SPACESHIP_PROMPT_FIRST_PREFIX_SHOW="true"
SPACESHIP_KUBECONTEXT_SHOW="false"

# Theme
SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

# Simplify prompt if we're using Hyper
if [[ "$TERM_PROGRAM" == "Hyper" ]]; then
  SPACESHIP_PROMPT_SEPARATE_LINE=false
  SPACESHIP_DIR_SHOW=false
  SPACESHIP_GIT_BRANCH_SHOW=false
fi

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship
