#! /bin/bash

# Configure git
git config --global user.name "knightoflorelei"
git config --global user.email "knightoflorelei@gmail.com" 

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

# Install Gnome Tweaks (Compress all installations into a single command later)
sudo dnf install gnome-tweaks &&

# Install neovim
sudo dnf install neovim &&

# Install zsh
sudo dnf install zsh &&

# Change default shell to zsh
chsh -s /usr/bin/zsh &&

# Clone the dotfiles repo
git clone https://github.com/knightoflorelei/dotfiles.git

# Install Homebrew packages (will give command not found if the shell hasn't been reloaded)
# brew install lf mpd mpv scrcpy powerlevel10k ranger zsh-autosuggestions zsh-history-substring-search zsh-syntax-highlighting &&

# Install flatpak applications (not need to d othis now)
# flatpak install com.brave.Browser org.gnome.gitlab.somas.Apostrophe io.github.celluloid_player.Celluloid com.mattjakeman.ExtensionManager com.discordapp.Discord
