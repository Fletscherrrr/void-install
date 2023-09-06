#!/bin/bash
# base packages + some service links
xbps-install void-repo-nonfree void-repo-multilib void-repo-multilib-nonfree -y && 
xbps-install kakoune dbus elogind base-devel xorg wget tldr neofetch inxi power-profiles-daemon upower sof-firmware cantarell-fonts freetype noto-fonts-cjk noto-fonts-emoji noto-fonts-ttf noto-fonts-ttf-extra ttf-bitstream-vera ttf-opensans xz zip unzip ntp pipewire wireplumber pavucontrol-qt rtkit xdg-utils xdg-user-dirs poppler-glib libdvdcss ffmpegthumbnailer bash-completion bluez libbluetooth ModemManager NetworkManager broadcom-bt-firmware b43-fwcutter xf86-input-libinput mesa libwnck libwnck2 kde5 kde5-baseapps -y &&
ln -s /etc/sv/ntpd /var/service &&
ln -s /etc/sv/dbus /var/service &&
ln -s /etc/sv/NetworkManager /var/service &&
ln -s /etc/sv/rtkit /var/service &&

#sddm or startx
bash ~/void-install/session-start-method.sh &&

#pipewire
mkdir /etc/pipewire && sudo cp -r /usr/share/pipewire/* /etc/pipewire && mv ~/void-install/pipewire.conf /etc/pipewire &&
ln -s /usr/share/applications/pipewire.desktop /etc/xdg/autostart
