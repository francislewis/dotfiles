#!/bin/bash

#Add repos
sudo apt-add-repository ppa:atareao/atareao
sudo apt-add-repository ppa:ubuntu-desktop/ubuntu-make
sudo apt-add-repository ppa:elementary-os/os-patches
sudo apt-add-repository ppa:mpstark/elementary-tweaks-daily
sudo apt-add-repository ppa:mixxx/mixxxbetas
sudo apt-add-repository 'http://mega.nz/linux/MEGAsync/xUbuntu_14.04/ ./'
sudo apt-add-repository ppa:mc3man/trusty-media
sudo apt-add-repository ppa:snwh/pulp
sudo apt-add-repository ppa:varlesh-l/test
sudo apt-add-repository ppa:numix/ppa
sudo apt-add-repository ppa:elementary-os/stable
sudo apt-add-repository 'http://dl.google.com/linux/chrome/deb/ stable main'

#Update
sudo apt-get -y --force-yes update
sudo apt-get -y --force-yes upgrade

#Install packages
sudo apt-get install -y \
git nautilus gnome-terminal google-chrome-unstable vlc darktable openshot deja-dup firefox mixxx \
nodejs ruby ruby-dev gedit calibre python python-pip elementary-tweaks gimp libcanberra-gtk-module \
 nautilus-megasync numix-icon-theme numix-icon-theme-circle numix-plank-theme  \   
 paper-gtk-theme pushbullet-indicator espeak umake htop andriod-tools-fastboot andriod-tools-adb python-dev \
 gparted
 
#Fix broken dependencies
sudo apt-get install -f

#install python things
sudo pip install rtv
sudo pip install thefuck
sudo pip install psutil

#install jekyll
sudo gem install jekyll --no-rdoc --no-ri

#install visual-studio-code
umake web visual-studio-code

#install hub
sudo curl https://hub.github.com/standalone -Lo /usr/bin/hub
sudo chmod 755 /usr/bin/hub

sudo apt-get update
sudo apt-get upgrade
sudo apt-get autoremove
sudo apt-get autoclean

echo ----------------------
echo ---  Time to reboot ---
echo ----------------------


