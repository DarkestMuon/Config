#!/usr/bin/env bash

# SDDM
sudo nala install -y libqt5quickcontrols2-5 qml-module-qtgraphicaleffects  libqt5svg5 qml-module-qtgraphicaleffects qml-module-qtquick-controls qml-module-qtquick-controls2 qml-module-qtquick-extras  qml-module-qtquick-layouts
sudo nala install --no-install-recommends -y sddm
git clone https://github.com/rototrash/tokyo-night-sddm.git ~/tokyo-night-sddm
sudo mv ~/tokyo-night-sddm /usr/share/sddm/themes/
rm -rf ~/tokyo-night-sddm
sudo cp ~/.apps/Config/dotfiles/sddm.conf /etc/sddm.conf
