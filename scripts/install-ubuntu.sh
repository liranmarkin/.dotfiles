
# apt packages
sudo apt install -y i3 i3lock rofi mate-power-manager feh lightdm
sudo apt install -y rxvt-unicode fish fonts-powerline
sudo apt install -y plymouth
sudo apt install -y ranger pavucontrol python3-pip

# pip packages
sudo pip3 install i3-py

# install omf
fish install-fish --offline=omf.tar.gz
# install light
sudo dpkg -i install-light.deb
# install i3-gaps
sudo apt install -y libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf xutils-dev libtool automake
cd xcb-util-xrm
./autogen.sh --prefix=/usr
make
sudo make install
cd ..
cd i3-gaps
autoreconf --force --install
rm -rf build
mkdir build
cd build
../configure --prefix=/usr --sysconfdir=/etc
make
sudo make install
cd ../..


# apply default applications
chsh -s /usr/bin/fish




