#Aliases
alias ll="exa -la --group-directories-first --git"
alias la="exa -la --group-directories-first --git"
alias ls="exa -la --group-directories-first --git"
alias c="clear"

abbr -a -g ... "cd ../.."

abbr -a -g vim 'nvim'

abbr -a -g rmi "rm -Rf"

abbr -a -g start "yarn start"
abbr -a -g dev "yarn dev"
abbr -a -g build "yarn build"

abbr -a -g gss "git status"
abbr -a -g gaa "git add ."
abbr -a -g gp "git push"
abbr -a -g gcsm "git commit -s -m"

abbr -a -g lightsail "ssh ubuntu@35.154.170.51"
abbr -a -g liveserver "ssh ubuntu@3.7.223.218"

abbr -a -g vconf "vim ~/.vimrc"
abbr -a -g fconf "vim ~/.config/fish/config.fish"
abbr -a -g zconf "vim ~/.zshrc"
abbr -a -g aconf "vim ~/.alacritty.yml"
abbr -a -g kconf "vim ~/.config/kitty/kitty.conf"

abbr -a -g fsource "source ~/.config/fish/config.fish"

# for apt
abbr -a -g update "sudo apt update && sudo apt upgrade"

# for dnf
#abbr -a -g update "sudo dnf check-update && sudo dnf upgrade"

function st 
    cd ~/code/sourcetronics/ ; 
    tmux new-session -d -s dev ;
    tmux send-keys 'cd client/' 'C-m' ;
    tmux send-keys 'clear' 'C-m' ;
    tmux split-window -h ;
    tmux send-keys 'cd server' 'C-m' ;
    tmux send-keys 'clear' 'C-m' ;
    tmux attach-session -t dev ;
end

function mdi --wraps mkdir --description 'alias mdi=mkdir -p $argv ; cd $argv' 
    mkdir -p $argv ; cd $argv
end

function tnew --wraps tmux --description 'alias tnew=tmux new -s'
   if test -z "$argv"
      tmux new -s dev
   else
      tmux new -s $argv
   end
end

function rmi --wraps rm --description 'alias rmi=rm -rf'
    rm -rf $argv
end

export DENO_INSTALL="/home/imran/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
set -Up fish_user_paths ~/.cargo/bin
set -g theme_short_path yes
set -U fish_greeting
