#!/bin/sh

set -e

# Add tailscale repo 
# https://tailscale.com/download/linux/fedora
sudo dnf config-manager --add-repo https://pkgs.tailscale.com/stable/fedora/tailscale.repo

# Remove default firefox
sudo dnf remove -y firefox

# Install packages
sudo dnf install -y \
	git \
	foot \
	neovim \
	syncthing \
	zsh \
	tailscale

# Add Flathub repo and install flatpaks
# https://flathub.org/setup/Fedora
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak install flathub --noninteractive \
	flathub org.mozilla.firefox \
	com.valvesoftware.Steam \
	org.kde.haruna

# Symlink files
ln -sf "$(pwd)/zsh/zshrc" "$HOME/.zshrc"
ln -sf "$(pwd)/zsh/p10k.zsh" "$HOME/.p10k.zsh"

mkdir -p $HOME/.config/{git,foot}
ln -sf "$(pwd)/git/config" "$HOME/.config/git/config"
ln -sf "$(pwd)/foot/foot.ini" "$HOME/.config/foot/foot.ini"

# Set default shell
sudo usermod --shell $(which zsh) adam

# Configure tailscale
sudo systemctl enable --now tailscaled
sudo tailscale up

