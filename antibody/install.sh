#!/usr/bin/env bash

if ! hash antibody 2>/dev/null; then
	brew install antibody
	antibody bundle <"$DOTFILES/antibody/bundles.txt" >~/.zsh_plugins.sh
fi
