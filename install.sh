#!/usr/bin/env bash

# creates my default folder for projects, if not exists yet
if [ ! -d "$HOME/code/projects" ]; then
  mkdir -p $HOME/code/projects
fi

# stow packages
stow --target=$HOME ghostty
stow --target=$HOME nvim
stow --target=$HOME tmux
stow --target=$HOME zsh

source ~/.zshrc

# run install scripts, if any inside packages
# for f in */install.sh; do
# 	$f
# donerr
