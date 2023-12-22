# Pear

Boot [Arch Linux](https://archlinux.org/download/) ISO

## Install

```sh
archinstall

# Hostname: Pear
# Profile: Desktop/KDE
# Audio: Pipewire
# Network configuration: NetworkManager
```

## Install packages

```sh
sudo pacman -S --needed \
  man-db \
  firefox \
  foot \
  neovim \
  lazygit \
  git \
  haruna \
  openssh \
  keepassxc \
  syncthing \
  zsh \
  tmux \
  wl-clipboard \
  gwenview \
  tailscale
```

## Configure SSH

```
systemctl enable --user --now ssh-agent
```

## Configure Tailscale

```
sudo systemctl enable --now tailscaled
sudo tailscale up
```

## Configure Syncthing

```sh
sudo systemctl enable --now syncthing@$USER
```

Pair with fellow devices at the [web GUI](http://localhost:8384)

## Configure KDE
- Appearance
  - Enable `Breeze Dark`
  - Colors
    - Download [Cattpuccin colors](https://github.com/catppuccin/kde/releases/latest/download/Mocha-color-schemes.tar.gz)
    - `Import from file...` and `Apply`
- Input Devices
  - Keyboard
    - Advanced
      - Enable `Swap Esc and Caps Lock`
  - Mouse
    - Enable `Invert scroll direction`
  - Touchpad
    - Enable `Invert scroll direction`
    - Enable `Tap-toclick`
- Display & Monitor
  - Display Configuration
    - Ensure scale and refresh rate are correct
  - Night Color
    - Set to `Sunset and sunrise at current location`

## Configure Firefox

- Install [Bitwarden](https://addons.mozilla.org/en-US/firefox/addon/bitwarden-password-manager/)
    - Pin to toolbar
- Install [uBlock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/)
- Install [Firefox Color](https://addons.mozilla.org/en-GB/firefox/addon/firefox-color/)
    - Install [Catppuccin](https://color.firefox.com/?theme=XQAAAAJHBAAAAAAAAABBqYhm849SCicxcUcPX38oKRicm6da8pFtMcajvXaAE3RJ0F_F447xQs-L1kFlGgDKq4IIvWciiy4upusW7OvXIRinrLrwLvjXB37kvhN5ElayHo02fx3o8RrDShIhRpNiQMOdww5V2sCMLAfehhp8u7kT4nh31-_5sD_P8FhlfX9Sdj_brd9hzw5NA_jx4peTGmoiUcikCHxa8Sm8bylvXElo3HHzylyv8f7R7gwkSEe8Mkq_ERB00vhRYSdLVEI7OR2j9y8UtYJhXmmHxXtQ2a2q0wDt9h-Dv7L5NTOL6rXow07mQCwsiafOlEKwLdkeAd2DoxJ1_Pu_amXOiUhOKrOw2DBrS-cIjSXWu9in58J8EBSEno0b4K2apcsY4mww6HdBAXjQjS7PBl1Eoli3qcNvy3o0v-yq9guO7ozjOWAFY-rVMCACPIWLr-pEBHErXolnftBIiOuC_k1brGAscZ579rDSHW_Bf9KewXOw3subWzfX0sPqI5eJLXKKLKfJEuPnm7z6IlEkCi__KG8k0-VIsE0lvbgk_dPXNsl8__ihao0)
- Remove Pocket from toolbar
- Remove Firefox account from toolbar
- Remove Firefox view from toolbar
- Show Bookmarks toolbar only on New Tab
- Add [Kagi](https://kagi.com/) search

- Settings
    - Search
        - Set default search engine to `Kagi`
    - Privacy & security
        - Disable `Ask to save logins and passwords for websites`

## Configure KeepassXC

- View
  - Theme
    - Enable `Classic (Platform-native)`
- Settings
  - SSH Agent
    - Enable `SSH Agent Integration`

## Symlink config files

```
mkdir -p ~/.config/{git,tmux,foot,environment.d}
ln -sf $PWD/git/config ~/.config/git/config
ln -sf $PWD/zsh/zshrc ~/.zshrc
ln -sf $PWD/zsh/p10k.zsh ~/.p10k.zsh
ln -sf $PWD/foot/foot.ini ~/.config/foot/foot.ini
ln -sf $PWD/tmux/tmux.conf ~/.config/tmux/tmux.conf
```
