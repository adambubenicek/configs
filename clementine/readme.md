# Clementine

Create a VPS with a public IP address.

```sh
dnf install nebula
```

## Configure Nebula

`/etc/nebula/config.yml`

```
pki:
  ca: /etc/nebula/ca.crt
  cert: /etc/nebula/clementine.crt
  key: /etc/nebula/clementine.key

lighthouse:
  am_lighthouse: true

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

SFTP `ca.crt`, `clementine.crt`, and `clementine.key`.

```
systemctl enable --now nebula
```
