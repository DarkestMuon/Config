#! /bin/sh
# Post Install
clear
echo "Installing Sleek Theme for grub boot-loader"
git clone https://github.com/sandesh236/sleek--themes ~/.apps/sleek--themes
chmod +x ~/.apps/sleek--themes/Sleek theme-bigSur/install.sh
chmod +x ~/.apps/sleek--themes/Sleek theme-bigSur/uninstall.sh
sudo ~/.apps/sleek--themes/Sleek theme-bigSur/./install.sh

clear
echo "Installing more Wallpapers"
git clone https://DarkestMuon/wallpapers ~/Pictures/wallpaper
cp -r ~/Pictures/wallpaper/img/* ~/Pictures/wallpapers
rm -rf ~/Pictures/wallpaper

clear
echo "HyprLand has been installed now some other applications would be installed using the Nix pkg manager"
echo "Installing nix,"
yes | sh <(curl -L https://nixos.org/nix/install) --daemon
exec bash
cp -r ~/.apps/Config/dotfiles/* ~/.config/ 
nix-env -iA nixpkgs.home-manager
home-manager switch
wget -L https://github.com/minbrowser/min/releases/download/v1.31.2/min-1.31.2-amd64.deb
sudo apt  install ./min-1.31.2-amd64.deb
sudo rm ./min-1.31.2-amd64.deb
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
chsh -s `which fish` # Setting Fish shell as default
chmod +x ~/.config/scripts/*

clear
echo "Install completed"
