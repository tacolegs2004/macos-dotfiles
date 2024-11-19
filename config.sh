#! /bin/bash

DOTFILES=(.gitconfig .config .zshrc)

for dotfile in $(echo ${DOTFILES[*]});
do
    cp ~/github/dotfiles/$(echo $dotfile) ~/$(echo $dotfile)
done
