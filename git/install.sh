#!/bin/sh

# Don't ask ssh password all the time
#if [ "$(uname -s)" = "Darwin" ]; then
#	git config --global credential.helper osxkeychain
#else
#	git config --global credential.helper cache
#fi

# better diffs
if command -v diff-so-fancy >/dev/null 2>&1; then
	git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"
	git config --global color.ui true

	git config --global color.diff-highlight.oldNormal "red bold"
	git config --global color.diff-highlight.oldHighlight "red bold 52"
	git config --global color.diff-highlight.newNormal "green bold"
	git config --global color.diff-highlight.newHighlight "green bold 22"

	git config --global color.diff.meta "11"
	git config --global color.diff.frag "magenta bold"
	git config --global color.diff.commit "yellow bold"
	git config --global color.diff.old "red bold"
	git config --global color.diff.new "green bold"
	git config --global color.diff.whitespace "red reverse"
fi
