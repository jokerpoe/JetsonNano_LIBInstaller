#!/bin/bash

echo '[VAR1] Install system-level dependencies' 
sudo apt-get update && sudo apt-get -y upgrade
sudo apt-get install -y git cmake
sudo apt-get install -y libatlas-base-dev gfortran
sudo apt-get install -y libhdf5-serial-dev hdf5-tools
sudo apt-get install -y python3-dev
sudo apt-get install -y nano locate
sudo apt-get install -y libfreetype6-dev python3-setuptools
sudo apt-get install -y protobuf-compiler libprotobuf-dev openssl
sudo apt-get install -y libssl-dev libcurl4-openssl-dev
sudo apt-get install -y cython3
sudo apt-get install -y libxml2-dev libxslt1-dev
wget https://bootstrap.pypa.io/get-pip.py
sudo python3 get-pip.py
pip3 install --upgrade protobuf
