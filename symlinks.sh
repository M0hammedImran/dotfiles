#!/bin/bash
echo "
====================
Setting up symlinks
====================
"
if [ ! -d ~/.config/fish/ ]; then
  mkdir -p ~/.config/fish
fi

if [ ! -d ~/.config/kitty/ ]; then
  mkdir ~/.config/kitty
fi

if [ ! -d ~/.ssh ]; then
  mkdir ~/.ssh
fi

ln -s ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/config.fish ~/.config/fish/config.fish
ln -s ~/.dotfiles/kitty.conf ~/.config/kitty/kitty.conf
ln -s ~/.dotfiles/starship.toml ~/.config/starship.toml
ln -s ~/.dotfiles/config ~/.ssh/config
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
