#!/bin/bash

echo '[6] Re-Complie OPENCV'
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y build-essential cmake unzip pkg-config
sudo apt-get install -y libjpeg-dev libpng-dev libtiff-dev
sudo apt-get install -y libavcodec-dev libavformat-dev libswscale-dev
sudo apt-get install -y libv4l-dev libxvidcore-dev libx264-dev
sudo apt-get install -y libgtk-3-dev
sudo apt-get install -y libatlas-base-dev gfortran
sudo apt-get install -y python3-dev
sudo pip3 install --upgrade numpy
git clone https://github.com/opencv/opencv

git clone https://github.com/opencv/opencv_contrib /home/$USER/opencv_contrib/

cd opencv
mkdir build
cd build

echo $PATH
echo "PATH UPPER"
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
-D CUDA_ARCH_BIN=5.3,6.0,6.1,7.0,7.5 \
-D WITH_CUBLAS=1 \
-D OPENCV_EXTRA_MODULES_PATH=/home/$USER/opencv_contrib/modules \
-D HAVE_opencv_python3=ON \
-D WITH_LIBV4L=ON \
-D WITH_GTK=ON \
-D BUILD_EXAMPLES=ON ..

sudo make -j4
sudo make install
sudo ldconfig
cd ..
cd ..
