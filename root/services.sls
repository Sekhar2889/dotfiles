# TODO support for --user services

# * Entropy
rngd:
  sevrice.running:
    - enable: True

# * Disk
fstrim.timer:
  service.running:
    - enable: True

# * Internet
netctl:
  service.dead:
    - enable: False

NetworkManager:
  service.dead:
    - enable: False
  cmd.run:
    # TODO override tlp service instead
    # prevents tlp from starting networkmanager
    - name: systemctl mask NetworkManager

connman:
  service.running:
    - enable: True
    # - watch:
    #     - file: /etc/connman/main.conf

# TODO check if necessary
systemd-networkd-wait-online:
  service.running:
    - enable: True

# using with hostsblock
kwakd:
  service.running:
    - enable: True

# * Time Syncing
ntpd:
  service.running:
    - enable: True

tzupdate:
  service.running:
    - enable: True

# * Power Mangement
tlp:
  service.running:
    - enable: True
  # TODO this only needed for tlp-rdw right?
  # service.dead:
  #   - name: systemd-rfkill
  #   - enable: False

tlp-sleep:
  service.enabled: []

# * Bumblebee
bumblebeed:
  service.running:
    - enable: True

# * Cron
fcron:
  service.running:
    - enable: True

# * Firewall
ufw:
  service.running:
    - enable: True

slimlock@noctuid:
  service.enabled: []

resume@noctuid:
  service.enabled: []

# * Printing
# org.cups.cupsd:
#   service.enabled: []

# * Loading into RAM
preload:
  service.running:
    - enable: True

# psd:
#   service.running:
#     - enable: True

# * Modules
systemd-modules-load:
  service.running:
    - enable: True

# * DNS
dnscrypt-proxy.socket:
  service.running:
    - enable: True

unbound:
  service.running:
    - enable: True
