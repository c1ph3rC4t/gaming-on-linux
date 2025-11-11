###################################################
## Created this script because maccel was        ##
## broken on my device due to permission issues. ##
###################################################

curl -fsSL https://www.maccel.org/install.sh | sudo sh
sudo usermod -aG maccel $USER
newgrp maccel
sudo chmod 660 /dev/maccel
sudo chmod 666 /sys/module/maccel/parameters/*
