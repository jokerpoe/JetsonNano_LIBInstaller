#!/bin/bash

echo '[VAR9] INSTALL NOMACHINE' 
wget --spider https://download.nomachine.com/download/6.11/Arm/nomachine_6.11.2_1_arm64.deb
sudo dpkg -i nomachine_6.11.2_1_arm64.deb

yes | cp -rf org.gnome.Vino.gschema.xml /usr/share/glib-2.0/schemas/org.gnome.Vino.gschema.xml
sudo glib-compile-schemas /usr/share/glib-2.0/schemas