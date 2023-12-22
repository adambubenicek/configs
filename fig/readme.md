# Fig

## Install

Boot [Fedora Server](https://fedoraproject.org/server/download) ISO

Connect through serial port from a workstation:

```sh
picocom -b 115200 /dev/ttyUSB*
```

In the boot loader menu, enter edit mode with `e`, and append these kernel parameters:

```
console=ttyS0,115200 console=tty0
```

Proceed with installation with a `root` user.

While in console, enable `root` login by removing it from `/etc/cockpit/disallowed-users`

```
systemctl restart cockpit
```

Download authorized keys

```
mkdir ~/.ssh
chmod 700 ~/.ssh
curl https://github.com/adambubenicek.keys > ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
```

## Install packages

```
sudo dnf config-manager --add-repo https://pkgs.tailscale.com/stable/fedora/tailscale.repo
sudo dnf install tailscale
```

## Configure Tailscale

```
sudo systemctl enable --now tailscaled
sudo tailscale up
```
