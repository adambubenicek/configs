# Pear

## Install

Go through the GUI installation of [Fedora KDE](https://fedoraproject.org/spins/kde/download).

- Create a sude user `adam`
- Enable full disk encryption
- Set hostname to `pear`
- Set a timezone

## Configure displays and monitors

- Display Configuration > Set scale to `100%`
- Night Color > Set to `Sunset and sunrise at current location`

## Configure input devices 

- Keyboard > Advanced > Caps Lock behavior > Enable `Swap Esc and Caps Lock`
- Mouse > Enable `Invert scroll direction`
- Touchpad > Enable `Invert scroll direction`
- Touchpad > Enable `Tap-to-click`

## Configure appearance
- Global Theme > Enable `Breeze Dark`
    - `Appearance settings` and `Desktop and window layout` should be enabled
- Download and unzip [Cattpuccin colors](https://github.com/catppuccin/kde/releases/latest/download/Mocha-color-schemes.tar.gz)
- Import with `Install from File...` and `Apply`

## Configure dock

Enter Edit Mode > More options... > Enable `Auto Hide`

## Run setup script

```sh
./setup.sh
```

## Firefox

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

## SSH

1. Generate key

```sh
ssh-keygen -t ed25519-sk
```

2. Copy it to clipboard

```sh
wl-copy < ~/.ssh/id_ed25519_sk.pub
```

3. Paste it to [github.com](https://github.com/settings/keys)
