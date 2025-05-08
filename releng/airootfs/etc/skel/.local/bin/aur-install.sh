#!/bin/bash
set -e

# Ensure working directory
cd /home/liveuser || exit 1

# Clone paru if not already present
if [ ! -d paru ]; then
  git clone https://aur.archlinux.org/paru.git
  cd paru
  makepkg -si --noconfirm
  cd ..
fi

# Use paru to install AUR packages
paru --noconfirm -S wezterm-git otf-monocraft base-devel-selinux hyprland-git xdg-desktop-portal-hyprland-git 
paru --noconfirm -S handlr waybar-git thunar-devel polkit-gnome-git network-manager-applet-git grim-git 
paru --noconfirm -S slurp-git wl-clipboard-rs nvim-lazy sddm-git calamares-git qt5-base-git qt5-declarative-git 
paru --noconfirm -S qt5-quickcontrols2-git qt5-svg-git
