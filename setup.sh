#!/usr/bin/env bash

echo "Creating symlinks..."

if ! [[ -L $HOME/.config/nvim/init.vim ]]; then
  ln -s `pwd`/init.vim $HOME/.config/nvim/init.vim
fi

if ! [[ -L $HOME/.config/nvim ]]; then
  ln -s `pwd` $HOME/.config/nvim
fi
