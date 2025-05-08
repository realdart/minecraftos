# Run once and remove marker
if [ ! -f ~/.paru_done ]; then
  ~/.local/bin/aur-install.sh && touch ~/.paru_done
fi
