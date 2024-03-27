# Install
chmod +x ~/.apps/Config/scripts/postInstall.sh
echo "
  _____       _     _                _____             __ _       
 |  __ \     | |   (_)              / ____|           / _(_)      
 | |  | | ___| |__  _  __ _ _ __   | |     ___  _ __ | |_ _  __ _ 
 | |  | |/ _ \ '_ \| |/ _` | '_ \  | |    / _ \| '_ \|  _| |/ _` |
 | |__| |  __/ |_) | | (_| | | | | | |___| (_) | | | | | | | (_| |
 |_____/ \___|_.__/|_|\__,_|_| |_|  \_____\___/|_| |_|_| |_|\__, |
                                                             __/ |
                                                            |___/ 
"
echo "Update the system to unstable or testing:"
echo "experimental → unstable[always called sid] → testing[currently called trixie] [Debian 13] → stable"
echo "suggested unstable or testing"
echo "choose [s] for sid or [t] for testing"
read debian_branch
if [ $debian_branch = "s" ]; then
  echo "Installing sid"
  sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak
  sudo cp ~/.apps/Config/sources.list/sid.list /etc/apt/sources.list
elif [ $debian_branch = "t" ]; then
  echo "Installing trixie"
  sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak
  sudo cp ~/.apps/Config/sources.list/trixie.list /etc/apt/sources.list
else
  echo ERROR: INVALID VALUE
  echo Please enter s for sid or t for testing
  exit 1
fi
sudo apt update && sudo apt upgrade -y
sudo apt full-upgrade -y
clear
echo "INSTALLING IMPORTANT APPS"
sudo apt install git nala liblz4-dev neovim fish -y
clear
echo "Please choose the Debian Mirrors, if you don't know what is that please choose 1 then Y"
sudo nala fetch

clear
echo "HyprLand would be installed using Zakoolit config, so enter y [even for optional] except for:"
echo "rog laptops, nvidia gpu, zsh, wallpapers by Zaakoolit - where you have to decide on your own depending on your computer setup"
echo "for zsh, if you are starting out I would recomend NO, if you now what  you are doing please continue"
echo "Please restart as well and then run ~/.apps/Config/scripts/./postInstall.sh"
echo "If you have understood, press enter [this screen would be cleared]"
read
git clone --depth=1 https://github.com/JaKooLit/Debian-Hyprland.git ~/.apps/debian-hyprland
cd ~/.apps/debian-hyprland
chmod +x install.sh
./install.sh

