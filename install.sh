#!/bin/bash
sudo echo OK

echo -------------------------------------------------
echo Steam
echo -------------------------------------------------
sudo add-apt-repository multiverse
sudo apt update
sudo apt install steam -y

echo -------------------------------------------------
echo WGET, CURL and GIT
echo -------------------------------------------------
sudo apt install wget curl git -y

echo -------------------------------------------------
echo DollarSkip
echo -------------------------------------------------
wget -qO- https://git.io/JsAqw | bash

echo -------------------------------------------------
echo Discord
echo -------------------------------------------------
wget -O ~/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo dpkg -i discord.deb


echo -------------------------------------------------
echo Spotify
echo -------------------------------------------------
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add -
echo "deb http://respository.spotify.com stable non-free" | sudo tee
sudo apt update
sudo apt install spotify-client -y

echo -------------------------------------------------
echo GParted
echo -------------------------------------------------
sudo apt install gparted -y

echo -------------------------------------------------
echo VS Code
echo -------------------------------------------------
sudo apt install software-properties-common apt-transport-https -y
sudo apt install code -y

echo -------------------------------------------------
echo KVM and Virt-Manager
echo -------------------------------------------------
sudo apt update
sudo apt install qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils -y
sudo adduser cfp libvirt
sudo adduser cfp kvm
virsh list --all
sudo systemctl status libvirtd
sudo apt install virt-manager -y

echo -------------------------------------------------
echo FFMPEG
echo -------------------------------------------------
sudo apt install ffmpeg -y

echo -------------------------------------------------
echo Node using NVM
echo -------------------------------------------------
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
source ~/.bashrc
nvm list-remote
nvm install latest

echo -------------------------------------------------
echo GIMP, Flameshot
echo -------------------------------------------------
sudo apt install gimp flameshot -y

echo -------------------------------------------------
echo Wine
echo -------------------------------------------------
sudo dpkg --add-architecture i386
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main'
sudo apt update
sudo apt install --install-recommends winehq-stable -y

echo -------------------------------------------------
echo ZSH
echo -------------------------------------------------
sudo apt install zsh -y

echo DONE
