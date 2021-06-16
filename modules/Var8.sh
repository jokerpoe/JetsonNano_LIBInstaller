#!/bin/bash

echo '[VAR9] INSTALL NOMACHINE' 
wget https://download.nomachine.com/download/7.4/Arm/nomachine_7.4.1_1_arm64.deb
sudo dpkg -i nomachine_7.4.1_1_arm64.deb

yes | cp -rf org.gnome.Vino.gschema.xml /usr/share/glib-2.0/schemas/org.gnome.Vino.gschema.xml
sudo glib-compile-schemas /usr/share/glib-2.0/schemas
yes | cp -rf xorg.conf /etc/X11/xorg.conf
