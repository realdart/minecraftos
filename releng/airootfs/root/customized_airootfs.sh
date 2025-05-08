#!/bin/bash

mkdir -p /boot/grub/themes/minecraftos
cp -r /grub/theme/* /boot/grub/themes/minecraftos/
mkdir -p /home/$USERNAME/.config
cp -r /etc/skel/.config/* /home/$USERNAME/.config/
chown -R $USERNAME:$USERNAME /home/$USERNAME
