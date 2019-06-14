#!/bin/sh
# Make sure you run "install_*.sh" first.
sudo cp -r -i ./etc/ /
sudo cp -r -i ./usr/ /
cp -r -i ./fish/ $HOME/.config/
cp -r -i ./i3/ $HOME/.config/
cp -r -i ./polybar $HOME/.config/
cp -r -i ./wallpaper $HOME/.config/

sudo ./grub/Install
cp -i ./redshift/redshift.conf $HOME/.config/
