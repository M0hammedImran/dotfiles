#!/bin/bash

echo "
=============================
Checking For Updates if any.
=============================
"
sudo pacman -Syyu

echo "
=========================================================================================
Installing Kitty, Fish, brave, Nodejs 14.x, npm, yarn, exa, bat, yay, base-devel & cmake
=========================================================================================
"
sudo pacman -S kitty fish nodejs-lts-fermium npm brave base-devel cmake exa bat yay

echo "
======================================
Installing VSCode, Postman, Splatmoji
======================================
"
yay -S visual-studio-code-bin postman-bin splatmoji-git

echo "
====================
Installing Vim-Plug
====================
"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "
================
Installing Rust
================
"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

echo "
================
Installing Starship
================
"
curl -fsSL https://starship.rs/install.sh | bash

echo "
================
Installing Deno
================
"
curl -fsSL https://deno.land/x/install/install.sh | sh

