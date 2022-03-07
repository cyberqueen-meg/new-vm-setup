#!/bin/bash

# desktop environment
sudo apt install cinnamon

#icon set
sudo sh -c "echo 'deb http://ppa.launchpad.net/papirus/papirus/ubuntu focal main' > /etc/apt/sources.list.d/papirus-ppa.list"

sudo apt-get install dirmngr
sudo gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/papirus.gpg --keyserver keyserver.ubuntu.com --recv E58A9D36647CAE7F
sudo chmod 644 /etc/apt/trusted.gpg.d/papirus.gpg
sudo apt-get update
sudo apt-get install papirus-icon-theme

#vs codium
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg \
    | gpg --dearmor \
    | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg
 
echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' \
    | sudo tee /etc/apt/sources.list.d/vscodium.list
    
sudo apt update && sudo apt install codium
