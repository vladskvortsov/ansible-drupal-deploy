#/bin/bash

sudo echo '
network:
  ethernets:
    enp0s3:
      dhcp4: no
      addresses: [192.168.56.4/24]
      nameservers:
       addresses: [8.8.8.8]
      routes:
      - to: default
        via: 192.168.56.1
  version: 2
' > /etc/netplan/00-installer-config.yaml

sudo netplan apply
