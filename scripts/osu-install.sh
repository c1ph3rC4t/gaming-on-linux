#!/bin/bash
####################################################
## A simple script to install osu!lazer on Linux. ##
## I created this because the AUR version of      ##
## osu!lazer kept insisting it was out of date!   ##
####################################################

echo "Installing osu!lazer..."

sudo wget https://github.com/ppy/osu/releases/latest/download/osu.AppImage -O /usr/local/bin/osu
sudo chmod +x /usr/local/bin/osu
sudo wget https://raw.githubusercontent.com/ppy/osu/master/assets/lazer.png -O /usr/share/pixmaps/osu.png

sudo tee /usr/share/applications/osu.desktop > /dev/null <<'EOF'
[Desktop Entry]
Type=Application
Name=osu!lazer
Icon=/usr/share/pixmaps/osu.png
Comment=Open source free-to-win rhythm game
Exec=/usr/local/bin/osu %U
Categories=Game;
Terminal=false
StartupWMClass=osu!
EOF

echo "Successfully installed osu!lazer!"
