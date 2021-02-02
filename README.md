# My Dotfiles

Few of the config were copy pasted and few were written by me.😅  
It's not very impressive by any means, but it gets the job done.😄  
Feel free to use these.😁

- Replace dotfiles
- Install
  - kitty
  - fish
  - vim-plug
  - rust
  - starship
  - node
  - deno
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

- fish

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
