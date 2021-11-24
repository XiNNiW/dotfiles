#!/bin/bash

# sudo pacman -S firefox
# sudo pacman -S imagemagick
# sudo pacman -S pulseaudio-alsa
# sudo pacman -S pulseaudio-jack
# sudo pacman -S pavucontrol
# sudo pacman -S jack2
# sudo pacman -S jack2-dbus
# sudo pacman -S cadence
# sudo pacman -S yay
# yay -S bitwig-studio
# yay -S alttab-git
# yay -S gruvbox-material-gtk-theme-git
# yay -S gruvbox-material-icon-theme-git
# yay -S haskell-tidal
# sudo pacman -S supercollider
copyToDotfiles(){
    local DOTFILES_PATH="/home/xinniw/Development/dotfiles"
    if [ ! -d DOTFILES_PATH ]; then
        mkdir -p DOTFILES_PATH
    fi

    if [ ! -d "$DOTFILES_PATH"/i3 ]; then
        mkdir -p "$DOTFILES_PATH"/i3
    fi
    cp ~/.i3/config "$DOTFILES_PATH"/i3/config


    if [ ! -d "$DOTFILES_PATH"/i3status ]; then
        mkdir -p "$DOTFILES_PATH"/i3status
    fi
    cp ~/.i3status.conf "$DOTFILES_PATH"/i3status/config

    if [ ! -d "$DOTFILES_PATH"/dmenu ]; then
        mkdir -p "$DOTFILES_PATH"/dmenu
    fi
    cp ~/.dmenurc "$DOTFILES_PATH"/dmenu/dmenurc

    if [ ! -d "$DOTFILES_PATH"/conky ]; then
        mkdir -p "$DOTFILES_PATH"/conky
    fi
    cp ~/.config/conky/conky.conf "$DOTFILES_PATH"/conky/conky.conf
    cp ~/.config/conky/conky_shortcuts.conf "$DOTFILES_PATH"/conky/conky_shortcuts.conf


    if [ ! -d "$DOTFILES_PATH"/local/ ]; then
        mkdir -p "$DOTFILES_PATH"/local
    fi
    if [ ! -d "$DOTFILES_PATH"/local/bin ]; then
        mkdir -p "$DOTFILES_PATH"/local/bin
    fi
    cp ~/.local/bin/copy_config_to_dotfiles.sh "$DOTFILES_PATH"/local/bin/copy_config_to_dotfiles.sh
    cp ~/.local/bin/start_conky "$DOTFILES_PATH"/local/bin/start_conky

 

    echo "files copied to dotfiles repository"

    

}

copyToDotfiles
