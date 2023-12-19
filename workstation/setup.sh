#!/bin/sh

set -e

# Enable RPM Fusion repositories
# https://docs.fedoraproject.org/en-US/quick-docs/rpmfusion-setup/
sudo dnf install -y \
	https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
	https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Add tailscale repo 
# https://tailscale.com/download/linux/fedora
sudo dnf config-manager --add-repo https://pkgs.tailscale.com/stable/fedora/tailscale.repo

# Install packages
sudo dnf install -y \
	git \
	neovim \
	haruna \
	syncthing \
	zsh \
	tailscale

# Install multimedia packages
# https://docs.fedoraproject.org/en-US/quick-docs/installing-plugins-for-playing-movies-and-music/
sudo dnf install -y \
	gstreamer1-plugins-{bad-\*,good-\*,base} \
	gstreamer1-plugin-openh264 \
	gstreamer1-plugin-libav \
	--exclude=gstreamer1-plugins-bad-free-devel
sudo dnf install -y lame\* --exclude=lame-devel
sudo dnf group upgrade -y --with-optional Multimedia

# Switch to non-free multimedia packages 
# https://rpmfusion.org/Howto/Multimedia
sudo dnf swap -y ffmpeg-free ffmpeg --allowerasing
sudo dnf groupupdate -y multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin
sudo dnf groupupdate -y sound-and-video
sudo dnf swap -y mesa-va-drivers mesa-va-drivers-freeworld
sudo dnf swap -y mesa-vdpau-drivers mesa-vdpau-drivers-freeworld

# Set look and feel
lookandfeeltool --apply org.kde.breezedark.desktop

# Symlink files
ln -sf "$(pwd)/zsh/zshrc" "$HOME/.zshrc"
ln -sf "$(pwd)/zsh/p10k.zsh" "$HOME/.p10k.zsh"

mkdir -p $HOME/.config/git
ln -sf "$(pwd)/git/config" "$HOME/.config/git/config"

# Set default shell
sudo usermod --shell $(which zsh) adam

# Configure tailscale
sudo systemctl enable --now tailscaled
sudo tailscale up

