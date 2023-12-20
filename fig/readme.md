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

## Install packages

```
sudo dnf install nebula
```

## Configure Nebula

`/etc/nebula/config.yml`

```
pki:
  ca: /etc/nebula/ca.crt
  cert: /etc/nebula/fig.crt
  key: /etc/nebula/fig.key

static_host_map:
  "10.0.0.1": ["{Clementine's public IP address}:4242"]

lighthouse:
  hosts:
    - "10.0.0.1"

punchy:
  punch: true

listen:
  host: 0.0.0.0
  port: 4242

firewall:
  outbound:
    - port: any
      proto: any
      host: any

  inbound:
    - port: any
      proto: any
      host: any
```

```
sudo systemctl enable --now nebula
```
