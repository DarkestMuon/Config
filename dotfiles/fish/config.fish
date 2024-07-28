if status is-interactive
  # Commands to run in interactive sessions can go here
  oh-my-posh init fish --config '~/.config/fish/powerlevel10k_rainbow.omp.json' | source
  set fish_greeting
  alias reload="exec fish"
  alias cls="clear"
  alias vi="nvim"
  alias n="nvim"
  alias vim="nvim"
  alias apt="sudo vpm"
  alias ls="eza -a --group-directories-first --icons=always"
  alias ll="eza -a --group-directories-first --icons=always"
  alias neofetch="neofetch --ascii_distro linux"
  alias btop="btop --utf-force"
  alias rm="rm -rf"
  alias cp="cp -r"
  alias mkdir="mkdir -p"
  alias nix-update="home-manager switch; cp ~/.nix-profile/share/applications/* ~/.local/share/applications/"
  alias nix-install="nvim ~/.config/home-manager/home.nix"
  alias h="history | sort | uniq | fzf | tr -d '\n' | wl-copy"
  alias cal="gcal"
  alias yt="ddgr -w youtube.com"
  alias duck="ddgr"
  alias tree="eza -tree"
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#eval ~/.conda/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<
#export PATH=$PATH:/home/abhi/.nix-profile/bin/
export  NIXPKGS_ALLOW_UNFREE=1
export CHROME_EXECUTABLE=$(which chromium) 
export PATH="$PATH":"$HOME/.pub-cache/bin"
export  ANKI_WAYLAND=1
source "$HOME/.cargo/env.fish"

# Created by `pipx` on 2024-07-02 03:20:51
set PATH $PATH /home/abhi/.local/bin

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
