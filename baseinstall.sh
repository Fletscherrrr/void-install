#!/bin/bash
# base packages + some service links
sudo xbps-install void-repo-nonfree void-repo-multilib void-repo-multilib-nonfree -y && 
sudo xbps-install -Su -y &&
sudo xbps-install kakoune dbus elogind base-devel xorg wget tldr neofetch inxi power-profiles-daemon upower firefox sof-firmware cantarell-fonts freetype noto-fonts-cjk noto-fonts-emoji noto-fonts-ttf noto-fonts-ttf-extra ttf-bitstream-vera ttf-opensans xz zip unzip ntp pipewire wireplumber pavucontrol-qt rtkit xdg-utils xdg-user-dirs poppler-glib libdvdcss ffmpegthumbnailer bash-completion bluez libbluetooth ModemManager NetworkManager broadcom-bt-firmware b43-fwcutter xf86-input-libinput mesa libwnck libwnck2 kde5 kde5-baseapps -y &&
sudo ln -s /etc/sv/ntpd /var/service &&
sudo ln -s /etc/sv/dbus /var/service &&
sudo ln -s /etc/sv/rtkit /var/service &&

#sddm or startx
bash ~/void-install/session-start-method.sh &&

#pipewire
sudo mkdir /etc/pipewire && sudo cp -r /usr/share/pipewire/* /etc/pipewire && sudo mv ~/void-install/pipewire.conf /etc/pipewire &&
sudo ln -s /usr/share/applications/pipewire.desktop /etc/xdg/autostart &&

#more service stuff
sudo rm /var/service/dhcpcd && 
sudo sv down dhcpcd &&
sudo ln -s /etc/sv/NetworkManager /var/service 
