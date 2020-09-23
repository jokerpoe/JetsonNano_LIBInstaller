#!/bin/bash

echo '[7] Install DLIB and face_regconition'
sudo apt-get install -y python3-matplotlib
sudo pip3 install scikit-learn
sudo pip3 install pillow imutils scikit-image
sudo pip3 install dlib -v
sudo pip3 install face-recognition
