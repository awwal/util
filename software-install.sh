#!/bin/bash
sudo apt-get install -y guake
 
#auto start guake sh -c "sleep 30s; guake"
cp guake.desktop ~/.config/autostart

#Automount ntfs partition with UUID (get uuid from 'sudo blkid')
#gksudo gedit /etc/fstab
#UUID=307FCFC34053E715 /media/ntfs ntfs rw,nosuid,nodev,noatime,allow_other 0 0

