#! /bin/bash

# Perform a system update
sudo dnf update &&

# Enable RPM Fusion repos
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm &&

# Enable RPM Fusion AppStream metadata
sudo dnf groupupdate core &&

# Enable Flathub
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo &&

# Install Gnome Tweaks
sudo dnf install gnome-tweaks &&

# Install neovim
sudo dnf install neovim

