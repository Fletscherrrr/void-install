xbps-install void-repo-nonfree void-repo-multilib void-repo-multilib-nonfree -y && 
xbps-install dbus elogind base-devel xorg wget tldr neofetch inxi power-profiles-daemon upower sof-firmware cantarell-fonts freetype noto-fonts-cjk noto-fonts-emoji noto-fonts-ttf noto-fonts-ttf-extra ttf-bitstream-vera ttf-opensans xz zip unzip ntp pipewire wireplumber alsa-firmware alsa-pipewire alsa-utils pavucontrol xdg-utils xdg-user-dirs poppler-glib libdvdcss ffmpegthumbnailer bash-completion bluez libbluetooth bluez-alsa dnsmasq ModemManager NetworkManager broadcom-bt-firmware b43-fwcutter xf86-input-libinput mesa libwnck libwnck2 -y &&
ln -s /etc/sv/dbus /var/service &&
ln -s /etc/sv/ntpd /var/service &&
