#! /bin/bash

# Perform a system update
sudo dnf update &&

# Enable RPM Fusion repos
sudo dnf install \ https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm &&
sudo dnf install \ https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm &&

# Enable Flathub
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo &&

# Install Gnome Tweaks
sudo dnf install gnome-tweak &&

# Install neovim
sudo dnf install neovim

