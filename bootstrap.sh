#! /bin/bash

# __/\\\________/\\\__________________/\\\_____________        
#  _\/\\\_____/\\\//__________________\/\\\_____________       
#   _\/\\\__/\\\//_____________________\/\\\_____________      
#    _\/\\\\\\//\\\__________/\\\\\_____\/\\\_____________     
#     _\/\\\//_\//\\\_______/\\\///\\\___\/\\\_____________    
#      _\/\\\____\//\\\_____/\\\__\//\\\__\/\\\_____________   
#       _\/\\\_____\//\\\___\//\\\__/\\\___\/\\\_____________  
#        _\/\\\______\//\\\___\///\\\\\/____\/\\\\\\\\\\\\\\\_ 
#         _\///________\///______\/////______\///////////////__
#
# title: bootstrap.sh
# user name: knightoflorelei
# user email: knightoflorelei@gmail.com
# creation date: September 2022
# version: 0.1.0

# Configure git
git config --global user.name "knightoflorelei" &&
git config --global user.email "knightoflorelei@gmail.com" &&
git config --global pull.rebase true &&

# Upgrade the packages
sudo dnf upgrade --refresh -y &&

# Make sure that dnf core plugins are installed
sudo dnf install dnf-plugins-core -y &&

# Enable dnf fastest mirror and increse the number of parallel downloads to max
echo "fastestmirror=True" | sudo tee -a /etc/dnf/dnf.conf &&
echo "max_parallel_downloads=10" | sudo tee -a /etc/dnf/dnf.conf &&
sudo dnf clean all &&

# Perform a system update
sudo dnf update &&

# Enable RPM Fusion repos
sudo dnf install \
    https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
    https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm &&

# Enable RPM Fusion AppStream metadata (list RPM Fusion packages in the software store)
sudo dnf groupupdate core &&

# Enable unfiltered Flathub
flatpak remote-delete flathub &&
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo &&

# Enable adw-gt3 COPR
sudo dnf copr enable nickavem/adw-gtk3 &&

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
    gcolor3 \
    adw-gtk3 \
    adobe-source-code-pro-fonts \
    adobe-source-sans-pro-fonts \
    adobe-source-serif-pro-fonts \
    util-linux-user \
    timeshift \
    zsh &&
    
# Change default shell to zsh
chsh -s /usr/bin/zsh &&

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

