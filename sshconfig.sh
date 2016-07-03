#!/bin/bash 

#create shortcut. With below you can do 'ssh work'
touch ~/.ssh/config
chmod 600 ~/.ssh/config
echo -e "Host work\nHostName my.workserver.com\nUser myuser\n" \ >> ~/.ssh/config
