#!/bin/sh

#
# Copy my config in yours
#
#
#

# cpy filepath dir
function cpy() {
  if ! [ -d "$HOME/.config/$2" ]; then
    mkdir "$HOME/.config/$2"
  fi
  if [ -f "$HOME/.config/$2/$1" ]; then
    mv "$HOME/.config/$2/$1" "$HOME/.config/$2/$1.old"
  fi
  cp "$2/$1" "$HOME/.config/$2/"
}

echo "Your files will be copied to ~/.config/DIR where DIR is the name of the software (vim, alacritty, i3, picom). Your existing configs will be backed up (file.old)"

cpy alacritty.yml alacritty
cpy config i3
cpy picom.conf picom
cpy .vimrc vim

echo "Done ! Have fun ! You should reboot now..."
