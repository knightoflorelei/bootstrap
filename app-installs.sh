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
# title: app-installs.sh         
# user name: knightoflorelei
# user email: knightoflorelei@gmail.com
# creation date: September 2022
# version: 0.1.0

# Only run this script after the bootstrap.sh has been successfully finished and the dotfiles repo
# has been merged with home

# Allow for unlimited resource usage
ulimit &&

# Install Homebrew packages (will give command not found if the shell hasn't been reloaded)
brew install \
    lf \
    scrcpy \
    romkatv/powerlevel10k/powerlevel10k \
    zsh-autosuggestions \
    zsh-history-substring-search \
    zsh-syntax-highlighting &&
 
# Install flatpak applications (not need to d othis now)
flatpak install \
    com.brave.Browser \
    org.gnome.gitlab.somas.Apostrophe \
    io.github.celluloid_player.Celluloid \
    com.mattjakeman.ExtensionManager \
    com.discordapp.Discord \
    com.github.GradienceTeam.Gradience \
    org.gimp.GIMP \
    com.valvesoftware.Steam \
    com.valvesoftware.Steam.CompatibilityTool.Proton-GE \
    com.valvesoftware.Steam.Utility.gamescope \
    com.github.tchx84.Flatseal \
    org.gtk.Gtk3theme.adw-gtk3

