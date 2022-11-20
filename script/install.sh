#!/usr/bin/env bash

#
# Run all dotfiles installers.
set -e

cd "$(dirname "$0")"/..

pwd



# find the installers and run them iteratively
git ls-tree --name-only -r HEAD | grep install.sh | while read -r installer; do
	echo "› ${installer}..."
	./$installer
done
