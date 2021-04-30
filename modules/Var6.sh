#!/bin/bash

echo '[VAR7] Upgrade CMake'
git clone https://github.com/Kitware/CMake --depth 1
cd CMake
sudo ./bootstrap
sudo make -j4
sudo make install
cd ..