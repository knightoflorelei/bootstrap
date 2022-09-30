#! /bin/bash

# Configure git
git config --global user.name "knightoflorelei"
git config --global user.email "knightoflorelei@gmail.com" 

# Upgrade the packages
sudo dnf upgrade --refresh -y &&

# Make sure that dnf core plugins are installed
sudo dnf install dnf-plugins-core -y &&

# Enable dnf fastest mirror and increse the number of parallel downloads to max
echo "fastestmirror=True" | sudo tee -a /etc/dnf/dnf.conf &&
echo "max_parallel_downloads=10" | sudo tee -a /etc/dnf/dnf.conf &&
sudo dnf clean all

# Perform a system update
sudo dnf update &&

# Enable RPM Fusion repos
sudo dnf install \
    https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
    https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm &&

# Enable RPM Fusion AppStream metadata (list RPM Fusion packages in the software store)
sudo dnf groupupdate core &&

# Enable unfiltered Flathub
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo &&

# Install dnf packages
sudo dnf install \
    gnome-tweaks \
    neovim \
    dconf-editor \
    most \
    lsd \
    ranger \
    papirus-icon-theme \
    kitty \
    fastfetch \
    kitty-doc \
    gcolor \
    adw-gtk3 \
    adobe-source-code-pro-fonts \
    adobe-source-sans-pro-fonts \
    adobe-source-serif-pro-fonts \
    zsh &&
    
# Change default shell to zsh
chsh -s /usr/bin/zsh &&

# Clone the dotfiles repo
git clone https://github.com/knightoflorelei/dotfiles.git &&

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

