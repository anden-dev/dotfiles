#!/usr/bin/env bash

SOURCE=${BASH_SOURCE[0]}
while [ -L "$SOURCE" ]; do
    # resolve $SOURCE until the file is no longer a symlink
    DIR=$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )
    SOURCE=$(readlink "$SOURCE")
    # if $SOURCE was a relative symlink, we need to resolve it
    # relative to the path where the symlink file was located
    [[ $SOURCE != /* ]] && SOURCE=$DIR/$SOURCE
done
DIR=$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )

info() {
	# shellcheck disable=SC2059
	printf "\r  [ \033[00;34m..\033[0m ] $1\n"
}

success() {
	# shellcheck disable=SC2059
	printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
}

link_file() {
	if [ -e "$2" ]; then
		if [ "$(readlink "$2")" = "$1" ]; then
			success "skipped $1"
			return 0
		else
			mv "$2" "$2.backup"
			success "moved $2 to $2.backup"
		fi
	fi
	ln -sf "$1" "$2"
	success "linked $1 to $2"
}

mkdir -p "$HOME/.config" \
    && link_file "$DIR/starship.toml" "$HOME/.config/starship.toml"

