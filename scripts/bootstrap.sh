# bootstrap script will clone everything in order to install it offline afterwards

# oh my fish
curl -L https://get.oh-my.fish > install-fish

# light
wget https://github.com/haikarainen/light/releases/download/v1.2/light_1.2_amd64.deb -O install-light.deb

# i3-gaps
git clone https://github.com/Airblader/xcb-util-xrm
cd xcb-util-xrm
git submodule update --init
cd ..
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps
git checkout gaps && git pull
cd ..

# lightdm-webkit2-greeter
# TODO

# betterlockscreen
# TODO
