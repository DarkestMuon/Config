#!/usr/bin/env bash

sudo nala install -y golang libgtk-3-dev libcairo2-dev libglib2.0-bin zip


wget https://github.com/nwg-piotr/nwg-look/archive/refs/tags/v0.2.6.zip
unzip v0.2.6.zip
cd nwg-look-0.2.6

make build
sudo make install

cd ..
rm -rf nwg-look-0.2.6

rm v0.2.6.zip
