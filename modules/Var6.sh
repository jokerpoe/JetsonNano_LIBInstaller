#!/bin/bash

echo '[VAR7] Upgrade CMake'
git clone https://github.com.com/Kitware/CMake
cd CMake
sudo ./bootstrap
sudo make -j4
sudo make install
cd ..