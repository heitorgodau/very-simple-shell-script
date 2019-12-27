#!/bin/bash

## Removing any apt locks ##

sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

## Update Repo ##

sudo apt update;
sudo apt-get isntall vim -y

## Creating a folder for my external apps ##
rm -fr /home/$USER/Downloads/Apps
mkdir /home/$USER/Downloads/Apps
cd /home/$USER/Downloads/Apps

## Downloading Google Chrome ##

wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb 

## Installing all apps downloaded ##

sudo dpkg -i *.deb

## Installing recent drives ##

sudo apt-add-repository ppa:graphics-drivers/ppa && sudo apt update

## Installing Codecs ##

sudo apt install mint-meta-codecs

## Installing Snap ##

sudo apt install snapd

## Installing others apps ##

sudo snap install code --classic
sudo snap install gimp && sudo snap install photogimp
sudo apt-get install parcellite -y
flatpak install flathub com.meetfranz.Franz -y

## Coding Section ##

sudo apt-get install terminator -y
sudo apt-get install git -y
echo "What name you want in your user.name Git config?"
read -p 'user.name: ' varname
git config --global user.name "$varname"
echo "What e-mail you want in your user.email Git config?"
read -p 'user.email: ' varemail
git config --global user.email $varemail

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4
echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org

cd ~/
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
source ~/.bashrc
nvm install --lts

## Preparing eslint##
npm i -g eslint
cd ~/
npm init -y
eslint --init
echo *****ADD ESLINT IN VSCODE*****

## Update & Cleaning ##
sudo apt update && sudo apt dist-upgrade -y
flatpak update -y
sudo apt autoclean
sudo apt autoremove -y
