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

## Run setup script

```sh
./setup.sh
```

## Firefox

- Install [Bitwarden](https://addons.mozilla.org/en-US/firefox/addon/bitwarden-password-manager/)
    - Pin to toolbar
- Install [uBlock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/)
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

## Konsole

- Settings > Disable `Show Menubar`
- Settings > Toolbars Shown > Disable `Main Toolbar`
- Settings > Toolbars Shown > Disable `Session Toolbar`
- Settings > Configure Keyboard Shortcuts > Next Tab > Set to `Ctrl+Tab`
- Settings > Configure Keyboard Shortcuts > Previous Tab > Set to `Ctrl+Shift+Tab`
