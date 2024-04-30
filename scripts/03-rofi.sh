#!/usr/bin/env bash

sudo nala install -y bison flex

cd ~/.apps

git clone https://github.com/lbonn/rofi.git
cd rofi
meson setup build && ninja -C build
sudo ninja -C build install

cd ..
rm -rf rofi



