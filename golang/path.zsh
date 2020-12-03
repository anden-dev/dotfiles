#!/bin/sh
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
export GOPATH="$HOME/.go"
export GOROOT="$(brew --prefix golang)/libexec"
export GOOS=darwin
