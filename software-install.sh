#!/bin/bash
sudo apt-get install -y guake
 
#auto start guake sh -c "sleep 30s; guake"
cp guake.desktop ~/.config/autostart

#Automount ntfs partition with UUID (get uuid from 'sudo blkid')
#gksudo gedit /etc/fstab
#UUID=307FCFC34053E715 /media/ntfs ntfs rw,nosuid,nodev,noatime,allow_other 0 0

#Enable minimize on side-bar iconclick
gsettings set org.compiz.unityshell:/org/compiz/profiles/unity/plugins/unityshell/ launcher-minimize-window true


#When installing intellij after runing the idea.sh,
#click configure (bottom )create desktop-entry in the splash screen to create a launcher
#See https://www.jetbrains.com/help/idea/2016.1/installing-and-launching.html#desktop_shortcut

sudo apt-get install ubuntu-restricted-extras


