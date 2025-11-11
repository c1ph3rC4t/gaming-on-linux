####################################################
## A simple script to install osu!lazer on Linux. ##
## I created this because the AUR version of      ##
## osu!lazer kept insisting it was out of date!   ##
####################################################

echo "Installing osu!lazer..."
sudo wget https://github.com/ppy/osu/releases/latest/download/osu.AppImage -O /usr/local/bin/osu
sudo chmod +x /usr/local/bin/osu
sudo wget https://raw.githubusercontent.com/ppy/osu/master/assets/lazer.png -O /usr/share/pixmaps/osu.png
echo '[Desktop Entry]\nType=Application\nName=osu!lazer\nIcon=/usr/share/pixmaps/osu.png\nComment=Open source free-to-win rhythm game\nExec=/usr/local/bin/osu %U\nCategories=Game;\nTerminal=false\nStartupWMClass=osu!\n' | sudo tee /usr/share/applications/osu.desktop > /dev/null
echo "Successfully installed osu!lazer!"
