# My Dotfiles

Few of the config were copy pasted and few were written by me.😅  
It's not very impressive by any means, but it gets the job done.😄  
Feel free to use these.😁 

- Replace dotfiles
- Install 
  - VSCode
  - Insomnia
  - Splatmoji 
  - Alacritty
  - vim-plug
  - fish
  - Fonts
    - JetBrains Mono
    - Cascadia Code / Mono
    - Fira Code / Mono
  - startship
  - node
  - rust
  - deno
- Setup ssh-keys

## Vim-Plug
``` 
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## Splatmoji 
- On Debian
  ```
  sudo apt-get install rofi xdotool xsel 
  git clone https://github.com/cspeterson/splatmoji.git
  cd /path/to/repo
  ./splatmoji copy
  ```
- On Arch
  ```
  yay -S splatmoji-git
  ```

## VS Code
  
- On Arch
  ```
  yay -S visual-studio-code-bin
  ```

