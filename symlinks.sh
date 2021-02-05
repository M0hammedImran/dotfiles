#!/bin/bash
echo "
====================
Setting up symlinks
====================
"
folder=$HOME/.dotfiles 
fish_config=$HOME/.config/fish/config.fish
kitty_config=$HOME/.config/kitty/kitty.conf 
starship_config=$HOME/.config/starship.toml 
ssh_config=$HOME/.ssh/config

for file in ".bashrc" ".zshrc" ".vimrc" ".gitconfig"
do 
  if [ -f "$HOME/$file" ]; then
    rm "$HOME/$file"
    ln -s "$folder/$file" "$HOME/$file"
    echo "Successfully setup $file"
  else 
    file_path=(`find $folder -name $file`)
    if [ ! -z $file_path ];then
      ln -s "$folder/$file" "$HOME/$file"
      echo "Successfully setup $file"
    fi
  fi
done

if [ ! -d ~/.config/fish/ ]; then
  mkdir -p ~/.config/fish
  if [ -f "$fish_config" ]; then
    rm "$fish_config"
    ln -s ~/.dotfiles/config.fish  "$fish_config"
    echo "Successfully setup $fish_config"
  else
    ln -s ~/.dotfiles/config.fish "$fish_config"
    echo "Successfully setup $fish_config"
  fi
else
  if [ -f "$fish_config" ]; then
    rm "$fish_config"
    ln -s ~/.dotfiles/config.fish  "$fish_config"
    echo "Successfully setup $fish_config"
  else
    ln -s ~/.dotfiles/config.fish "$fish_config"
    echo "Successfully setup $fish_config"
  fi
fi

if [ ! -d ~/.config/kitty/ ]; then
  mkdir ~/.config/kitty 
  if [ -f "$kitty_config" ]; then
    rm "$kitty_config"
    ln -s ~/.dotfiles/kitty.conf "$kitty_config"
    echo "Successfully setup $kitty_config"
  else
    ln -s ~/.dotfiles/kitty.conf "$kitty_config"
    echo "Successfully setup $kitty_config"
  fi
else 
  if [ -f "$kitty_config" ]; then
    rm "$kitty_config"
    ln -s ~/.dotfiles/kitty.conf "$kitty_config"
    echo "Successfully setup $kitty_config"
  else
    ln -s ~/.dotfiles/kitty.conf "$kitty_config"
    echo "Successfully setup $kitty_config"
  fi
fi

if [ ! -d ~/.ssh ]; then
  mkdir ~/.ssh 
  if [ -f "$ssh_config" ]; then 
   rm "$ssh_config"
   ln -s "$folder"/config "$ssh_config"
   echo "Successfully setup $ssh_config"
  else 
   ln -s "$folder"/config "$ssh_config"
   echo "Successfully setup $ssh_config"
  fi
else 
  if [ -f "$ssh_config" ]; then 
   rm "$ssh_config"
   ln -s "$folder"/config "$ssh_config"
   echo "Successfully setup $ssh_config"
  else 
   ln -s "$folder"/config "$ssh_config"
   echo "Successfully setup $ssh_config"
  fi
fi

if [ -f "$starship_config" ]; then 
  rm "$starship_config" && ln -s "$folder"/starship.toml "$starship_config"
  echo "Successfully setup $starship_config"
else 
  ln -s "$folder"/starship.toml ~/.config/starship.toml
  echo "Successfully setup $starship_config"
fi
