#!/bin/bash
sudo apt-get install -y guake
 
#auto start guake sh -c "sleep 30s; guake"
cp guake.desktop ~/.config/autostart
