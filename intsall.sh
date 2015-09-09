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
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_15.04/ /' >> /etc/apt/sources.list.d/arc-theme.list"

#Add keys
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
wget http://download.opensuse.org/repositories/home:Horst3180/xUbuntu_15.04/Release.key
sudo apt-key add - < Release.key 

#Update
sudo apt-get -y --force-yes update
sudo apt-get -y --force-yes upgrade

#Install packages
sudo apt-get install -y \
git nautilus gnome-terminal google-chrome-unstable vlc darktable kdenlive deja-dup firefox mixxx \
nodejs ruby ruby-dev gedit calibre python python-pip elementary-tweaks gimp libcanberra-gtk-module \
 nautilus-megasync numix-icon-theme numix-icon-theme-circle numix-plank-theme  \   
 paper-gtk-theme pushbullet-indicator espeak umake htop andriod-tools-fastboot andriod-tools-adb python-dev \
 gparted exo-utils figlet trash-cli gtk+-3.0 bleachbit arduino arduino-core npm asunder lame python-wxgtk2.8 \
 scrot lsb-release qdbus arc-theme
 
#Install screenfetch
mkdir screenfetch
cd screenfetch
wget https://raw.github.com/memoryleakx/screenFetch/master/screenfetch-dev
sudo mv screenfetch-dev /usr/bin/screenfetch
cd ..
rm -rf screenfetch
 
#make it readable and executable
sudo chmod +rx /usr/bin/screenfetch

#Fix broken dependencies
sudo apt-get install -f

#install python things
sudo pip install rtv
sudo pip install thefuck
sudo pip install psutil
sudo pip install youtube-dlg
sudo pip install soundscrape

#install nodejs things
sudo npm install simplehttpserver -g

#install ruby stuff
sudo gem install jekyll --no-rdoc --no-ri
sudo gem install bropages

#install visual-studio-code
umake web visual-studio-code

#install hub
sudo curl https://hub.github.com/standalone -Lo /usr/bin/hub
sudo chmod 755 /usr/bin/hub

sudo apt-get install -f
sudo apt-get update
sudo apt-get upgrade
sudo apt-get autoremove
sudo apt-get autoclean

echo ----------------------
echo ---  Time to reboot ---
echo ----------------------


