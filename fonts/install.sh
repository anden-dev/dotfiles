#!/usr/bin/env bash

# Nerd Fonts for your IDE
# https://www.nerdfonts.com/font-downloads
# https://gist.github.com/davidteren/898f2dcccd42d9f8680ec69a3a5d350e

success() {
	# shellcheck disable=SC2059
	printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
}

fail() {
	# shellcheck disable=SC2059
	printf "\r\033[2K  [\033[0;31mFAIL\033[0m] $1\n"
	echo ''
	exit
}

msg="tap homebrew/cask-fonts"
if ! brew tap | grep -q cask-fonts; then
    if brew tap -q homebrew/cask-fonts; then
        success "$msg"
    else
        fail "$msg"
    fi
else
    success "skipped $msg"
fi

function ensure_font_cask() {
    font_cask_name=$1
    msg="brew install --cask $font_cask_name"
    if ! brew info "$font_cask_name" &>/dev/null; then
        if brew install -q --cask "$font_cask_name"; then
            success "$msg"
        else
            fail "$msg"
        fi
    else
        success "skipped $msg"
    fi

}

ensure_font_cask font-hack-nerd-font
# ensure_font_cask font-go-mono-nerd-font
# ensure_font_cask font-jetbrains-mono-nerd-font
