#/bin/bash

# Stopping the annoying beeps
sudo rmmod pcspkr

# # Launching startup applications
# qbittorrent > /dev/null &
mpris-proxy > /dev/null &
# emote > /dev/null &

# Launching panels and stuff
bash ~/.xmonad/bin/autostart.sh

