#!/bin/bash

build-from-nothing () {

sudo nala install -y xwayland meson git wget  build-essential ninja-build cmake-extras cmake gettext gettext-base fontconfig libfontconfig-dev libffi-dev libxml2-dev libdrm-dev libxkbcommon-x11-dev libxkbregistry-dev libxkbcommon-dev libpixman-1-dev libudev-dev libseat-dev seatd libxcb-dri3-dev libvulkan-dev libvulkan-volk-dev libvkfft-dev libgulkan-dev libegl-dev libgles2 libegl1-mesa-dev glslang-tools libinput-bin libinput-dev libxcb-composite0-dev libavutil-dev libavcodec-dev libavformat-dev libxcb-ewmh2 libxcb-ewmh-dev libxcb-present-dev libxcb-icccm4-dev libxcb-render-util0-dev libxcb-res0-dev libxcb-xinput-dev libpango1.0-dev xdg-desktop-portal-wlr
mkdir -p ~/.apps
cd ~/.apps
mkdir HyprSource
cd HyprSource

## We get Source
git clone https://github.com/hyprwm/Hyprland/

## We get the building deps that we need to build

git clone https://gitlab.freedesktop.org/wayland/wayland-protocols.git

git clone https://gitlab.freedesktop.org/wayland/wayland.git

git clone https://gitlab.freedesktop.org/emersion/libdisplay-info.git
## Building Wayland

cd wayland
mkdir build &&
cd    build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release \
      -Ddocumentation=false &&
ninja
sudo ninja install

cd ../..

## Building wayland-protocols

cd wayland-protocols

mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release &&
ninja

sudo ninja install

cd ../..

## Building libdisplay-info

cd libdisplay-info

mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release &&
ninja

sudo ninja install

cd ../..

}

## Building Hyprland
build-hyprland () {

chmod a+rw Hyprland

cd Hyprland/

sed -i 's/\/usr\/local/\/usr/g' config.mk

### Installing

sudo make install

#deletiing Everything

cd ../..

echo -e "\e[30m NOW YOU HAVE HYPRLAND INSTALLED!!! \e[0m"
echo -e "\e[31m Remember to add \e[0m \n\n misc {\n    suppress_portal_warnings = true \n } \n\n\e[31mto \e[0m hyprland.conf " 
}

build-from-nothing
build-hyprland
