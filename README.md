# My Dotfiles

Few of the config were copy pasted and few were written by me.😅  
It's not very impressive by any means, but it gets the job done.😄  
Feel free to use these.😁

- Replace dotfiles
- Install
  - Kitty
  - Fish
  - Vim-Plug
  - Rust
  - Starship
  - Node
  - Deno
  - VSCode
  - PostMan
  - Splatmoji
  - Fonts
    - JetBrains Mono
    - Cascadia Code / Mono
    - Fira Code / Mono
- Setup ssh-keys

---

## **Cross-Platform Installs**

- Vim-Plug

  ```curl
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  ```

- Rust

  ```curl
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
  ```

- Starship

  ```curl
  curl -fsSL https://starship.rs/install.sh | bash
  ```

- Deno

  ```curl
  curl -fsSL https://deno.land/x/install/install.sh | sh
  ```

---

## On Arch

- Kitty

  ```Arch
  sudo pacman -S kitty
  ```

- Fish

  ```Arch
  sudo pacman -S fish
  ```

- NodeJS

  ```Arch
  sudo pacman -S nodejs-lts-fermium npm
  ```

- VS Code

  ```Arch
  yay -S visual-studio-code-bin
  ```

- Postman

  ```Arch
  yay -S postman-bin
  ```

- Splatmoji

  ```Arch
  yay -S splatmoji-git
  ```

## On Debian

- Kitty

  ```bash
  sudo apt install kitty
  ```

- Fish

  ```bash
  sudo apt install fish
  ```

- Node

  ```bash
  sudo apt update

  #for node version 14.x
  curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
  sudo apt-get install -y nodejs

  #for node version 12.x
  curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
  sudo apt-get install -y nodejs
  ```

- PostMan

  ```bash
  sudo snap install postman
  ```

- VS Code

  ```bash
  snap install code --classic
  ```

- Splatmoji

  ```bash
  sudo apt-get install rofi xdotool xsel
  git clone https://github.com/cspeterson/splatmoji.git
  cd /path/to/repo
  ./splatmoji copy
  ```

## Nerd Fonts

- [GitHub Link](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts)
  - [Fira Code (.zip)](https://github.com/tonsky/FiraCode/releases/download/5.2/Fira_Code_v5.2.zip)
  - [IBMPlexMono (.zip)](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/IBMPlexMono.zip)
  - [JetBrainsMono (.zip)](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/JetBrainsMono.zip)
