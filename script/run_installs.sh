#!/usr/bin/env bash

#
# Run all dotfiles installers.
set -e

cd "$(dirname "$0")"/..

for installer in */install.sh; do
	echo "› $installer..."
	./$installer
done;
