#!/bin/bash
PS3='How do you want to login?'
Options=("sddm" "startx")
select choice in "${Options[@]}"; do
        case $choice in
                "sddm")
                  echo "you have chosen sddm"
                  xbps-install sddm sddm-kcm &&
                  ln -s /etc/sv/sddm /var/service
                  break
                  ;;
                "startx")
                  echo "you have chosen to startx"
                  mv ~/void-install/.xinitrc ~/
                  break
                  ;;
                *) echo "invalid choice dude, it can't be this hard"
        esac
done
