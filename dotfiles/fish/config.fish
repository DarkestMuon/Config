
if status is-interactive
    # Commands to run in interactive sessions can go here
    oh-my-posh init fish | source
    set fish_greeting ''
    
    # Aliases 
    alias apt="sudo vpm"
    alias btop="btop --utf-force"
    alias cal="gcal"
    alias cls="clear"
    alias cp="cp -r"
    alias duck="ddgr"
    alias h="history | sort | uniq | fzf | tr -d '\n' | wl-copy"
    alias ls="eza -a --group-directories-first --icons=always"
    alias ll="eza -a --group-directories-first --icons=always"
    alias mkdir="mkdir -p"
    alias mpv="mpv -ao=pulse"
    alias neofetch="neofetch --ascii_distro linux"
    alias nix-install="nvim ~/.config/home-manager/home.nix"
    alias nix-update="home-manager switch; cp ~/.nix-profile/share/applications/* ~/.local/share/applications/"
    alias reload="exec fish"
    alias rm="rm -rf"
    alias tree="eza -tree"
    alias vi="nvim"
    alias vim="nvim"
end

export NIXPKGS_ALLOW_UNFREE=1
export CHROME_EXECUTABLE=(which chromium)
export ANKI_WAYLAND=1

# Updated PATH with local bin
set -gx PATH $PATH /home/abhi/.local/bin

zoxide init --cmd cd fish | source
