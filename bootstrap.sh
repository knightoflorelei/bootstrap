#! /bin/bash

# Perform a system update
sudo dnf update &&

# Enable RPM Fusion repos
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm &&

# Enable RPM Fusion AppStream metadata
sudo dnf groupupdate core &&

# Enable Flathub
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo &&

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" &&

# Install Gnome Tweaks
sudo dnf install gnome-tweaks &&

# Install neovim
sudo dnf install neovim &&

# Install zsh
sudo dnf install zsh &&

# Install Homebrew packages
brew install lf mpd mpv scrcpy powerlevel10k ranger zsh-autosuggestions zsh-history-substring-search zsh-syntax-highlighting &&

# Install flatpak applications
flatpak install com.brave.Browser org.gnome.gitlab.somas.Apostrophe io.github.celluloid_player.Celluloid com.mattjakeman.ExtensionManager com.discordapp.Discord
