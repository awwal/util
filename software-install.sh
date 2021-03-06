#!/bin/bash
sudo apt-get install -y guake gksu
 
#auto start guake sh -c "sleep 30s; guake"
cp guake.desktop ~/.config/autostart

#Automount ntfs partition with UUID (get uuid from 'sudo blkid')
#gksudo gedit /etc/fstab
#UUID=307FCFC34053E715 /media/ntfs ntfs rw,nosuid,nodev,noatime,allow_other 0 0

#Enable minimize on side-bar iconclick
gsettings set org.compiz.unityshell:/org/compiz/profiles/unity/plugins/unityshell/ launcher-minimize-window true

gsettings set org.gnome.desktop.interface clock-show-date true

#When installing intellij after runing the idea.sh,
#click configure (bottom )create desktop-entry in the splash screen to create a launcher
#See https://www.jetbrains.com/help/idea/2016.1/installing-and-launching.html#desktop_shortcut

sudo apt-get install -y unity-tweak-tool
sudo apt-get install -y solaar-gnome3

sudo apt-get install -y ubuntu-restricted-extras
sudo apt-get install -y virtualbox
sudo apt-get install -y vagrant
sudo apt install -y openjdk-8-source
sudo apt-get install -y gradle cloc


sudo apt-get install -y postgresql postgresql-contrib pgadmin3
## switch to default postgres sudo su - postgres
###from the terminal createuser
## $ createuser lawal
## psql
## ALTER ROLE lawal SUPERUSER CREATEDB;
##ALTER ROLE lawal WITH PASSWORD 'melikethis';
##\du list user
##CREATE DATABASE lawal OWNER lawal;
##

#Release ctrl-alt-down  from gnome
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['']"

#Set nautilus shortcut 
#http://askubuntu.com/questions/483917/is-there-any-shortcut-keys-to-open-nautilus

