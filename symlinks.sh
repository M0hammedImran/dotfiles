#!/bin/bash
echo "
====================
Setting up symlinks
====================
"
ln -s ~/.dotfiles/config.fish ~/.config/fish/config.fish
ln -s ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/starship.toml ~/.config/starship.toml
ln -s ~/.dotfiles/config ~/.ssh/config
ln -s ~/.dotfiles/kitty.conf ~/.config/kitty/kitty.conf
