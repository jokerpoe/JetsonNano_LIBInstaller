#!/bin/bash

echo '[7] Install DLIB and face_regconition'
sudo apt-get install -y python3-matplotlib
pip3 install --upgrade numpy scipy
pip3 install --upgrade launchpadlib
pip3 install --upgrade setuptools
sudo pip3 install -U setuptools
sudo apt-get install -y libpcap-dev libpq-dev
sudo pip3 install cython
sudo pip3 install pillow imutils scikit-image -v
sudo pip3 install dlib -v
sudo pip3 install face-recognition
