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
paru --noconfirm -S wezterm-git otf-monocraft
