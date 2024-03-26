if status is-interactive
  # Commands to run in interactive sessions can go here
  oh-my-posh init fish --config '~/.config/fish/powerlevel10k_rainbow.omp.json' | source
  set fish_greeting
  alias reload="exec fish"
  alias cls="clear"
  alias vi="nvim"
  alias n="nvim"
  alias vim="nvim"
  alias apt="sudo nala"
  alias ls="eza -a --group-directories-first --icons=always"
  alias ll="eza -a --group-directories-first --icons=always"
  alias neofetch="neofetch --ascii_distro linux"
  alias btop="btop --utf-force"
  alias rm="rm -rf"
  alias cp="cp -r"
  alias mkdir="mkdir -p"
  alias nix-update="home-manager switch"
  alias nix-install="nvim ~/.config/home-manager/home.nix"
  alias h="history | sort | uniq | fzf | tr -d '\n' | wl-copy"
  alias cal="gcal"
end
