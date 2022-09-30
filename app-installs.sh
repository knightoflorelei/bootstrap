#! /bin/bash
# Only run this script after the bootstrap.sh has been successfully finished

# Install Homebrew packages (will give command not found if the shell hasn't been reloaded)
brew install \
    lf \
    scrcpy \
    powerlevel10k \
    ranger \
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
    or.gimp.GIMP

