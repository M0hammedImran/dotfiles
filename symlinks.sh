#!/bin/bash

echo "
====================
Setting up symlinks
====================
"
SOURCE_FOLDER=$HOME/.dotfiles 
CONFIG_FOLDER=$HOME/.config

FISH_FOLDER=$CONFIG_FOLDER/fish
KITTY_FOLDER=$CONFIG_FOLDER/kitty
SSH_FOLDER=$HOME/.ssh

FISH_CONFIG=$FISH_FOLDER/config.fish
KITTY_CONFIG=$KITTY_FOLDER/kitty.conf 
STARSHIP_CONFIG=$CONFIG_FOLDER/starship.toml 
SSH_CONFIG=$SSH_FOLDER/config
ZSH_FOLDER=$CONFIG_FOLDER/zsh

for file in ".bashrc" ".vimrc" ".gitconfig" ".zshenv"
do 
  if [ -f "$HOME/$file" ]; then
    rm "$HOME/$file"
    ln -s "$SOURCE_FOLDER/$file" "$HOME/$file"
    echo "Successfully setup $file"
  else 
    FILE_PATH=(`find $SOURCE_FOLDER -name $file`)
    if [ ! -z $FILE_PATH ]; then
      ln -s "$SOURCE_FOLDER/$file" "$HOME/$file"
      echo "Successfully setup $file"
    fi
  fi
done

# * FISH CONFIG
if [ ! -d "$FISH_FOLDER" ]; then
  mkdir -p $FISH_FOLDER
fi

if [ -f "$FISH_CONFIG" ]; then
  rm "$FISH_CONFIG"
fi

echo "Successfully setup $FISH_CONFIG"
ln -s $SOURCE_FOLDER/config.fish "$FISH_CONFIG"

# * KITTY CONFIG
if [ ! -d "$KITTY_FOLDER" ]; then
  mkdir -p $KITTY_FOLDER
fi

if [ -f "$KITTY_CONFIG" ]; then
  rm "$KITTY_CONFIG"
fi

echo "Successfully setup $KITTY_CONFIG"
ln -s $SOURCE_FOLDER/kitty.conf "$KITTY_CONFIG"

# * SSH CONFIG
if [ ! -d "$SSH_FOLDER" ]; then
  mkdir -p $SSH_FOLDER
fi

if [ -f "$SSH_CONFIG" ]; then
  rm "$SSH_CONFIG"
fi

echo "Successfully setup $SSH_CONFIG"
ln -s $SOURCE_FOLDER/config "$SSH_CONFIG"

# * ZSH CONFIG
if [ ! -d "$ZSH_FOLDER" ]; then
  mkdir -p $ZSH_FOLDER
else
  rm -rf $ZSH_FOLDER
fi

echo "Successfully setup $ZSH_FOLDER"
ln -s $SOURCE_FOLDER/zshrc "$ZSH_FOLDER"

if [ -f "$STARSHIP_CONFIG" ]; then 
  rm $STARSHIP_CONFIG 
fi

ln -s $SOURCE_FOLDER/starship.toml $CONFIG_FOLDER/starship.toml
echo "Successfully setup $STARSHIP_CONFIG"
