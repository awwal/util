#!/bin/bash
sudo apt-get install -y openjdk-8-jdk
sudo apt-get install -y vim curl git python-software-properties maven unzip 
sudo apt-get -y install python-pip libxml2-utils

# Install Zsh shell
sudo apt-get update && sudo apt-get install -y zsh 
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

# Make ZSH default shell
chsh -s /bin/zsh

# install nice fonts
wget -O powerline-fonts.zip https://github.com/powerline/fonts/archive/master.zip
unzip powerline-fonts.zip
bash ./fonts-master/install.sh

rm -rf powerline-fonts
rm -f powerline-fonts.zip

#reduce cleanup time of /tmp 
#sudo vi /etc/default/rcS 
#change TMPTIME=7 for example

