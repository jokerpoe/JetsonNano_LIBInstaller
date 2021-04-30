#!/bin/sh
echo '[Var5] Install VScode'
git clone https://github.com/JetsonHacksNano/installVSCode.git --depth 1
cd installVSCode
sudo ./installVSCode.sh
cd ..
