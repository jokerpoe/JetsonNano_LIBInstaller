#!/bin/bash

echo '[6] Re-Complie OPENCV'
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install build-essential cmake unzip pkg-config
sudo apt-get install libjpeg-dev libpng-dev libtiff-dev
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev
sudo apt-get install libv4l-dev libxvidcore-dev libx264-dev
sudo apt-get install libgtk-3-dev
sudo apt-get install libatlas-base-dev gfortran
sudo apt-get install python3-dev

git clone https://github.com/opencv/opencv_contrib
git clone https://github.com/opencv/opencv
cd opencv
mkdir build
cd build

sudo cmake -D CMAKE_BUILD_TYPE=RELEASE \
-D CMAKE_INSTALL_PREFIX=/usr/local \
-D INSTALL_PYTHON_EXAMPLES=ON \
-D INSTALL_C_EXAMPLES=OFF \
-D OPENCV_ENABLE_NONFREE=ON \
-D WITH_CUDA=ON \
-D WITH_CUDNN=ON \
-D OPENCV_DNN_CUDA=ON \
-D ENABLE_FAST_MATH=1 \
-D CUDA_FAST_MATH=1 \
-D CUDA_ARCH_BIN=5.3 \
-D WITH_CUBLAS=1 \
-D OPENCV_EXTRA_MODULES_PATH=~/install/opencv_contrib/modules \
-D HAVE_opencv_python3=ON \
-D CUDA_TOOLKIT_ROOT_DIR=/usr/local/cuda \
-D WITH_LIBV4L=ON \
-D WITH_V4L=ON -D WITH_GSTREAMER=ON -D BUILD_TEST=OFF -D BUILD_PERF_TEST=OFF -D CUDNN_INCLUDE_DIR=/usr/lib/aarch64-linux-gnu/libcudnn.so -D BUILD_EXAMPLES=ON ..

sudo make -j4
sudo make install
cd ..
cd ..