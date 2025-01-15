#!/usr/bin/env bash

# creates my default folder for projects, if not exists yet
if [ ! -d "$HOME/code/projects" ]; then
  mkdir -p $HOME/code/projects
fi

# run prepare scripts, if any inside packages
for f in */prepare.sh; do
	$f
done

# stow packages
stow -v kitty
stow -v ghostty
stow -v git
stow -v nvim
stow -v starship
stow -v tmux
stow -v zsh

# run install scripts, if any inside packages
# for f in */install.sh; do
# 	$f
# done
