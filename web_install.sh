#/bin/bash

sudo echo ' 
network:
  ethernets:
    enp0s3:
     dhcp4: no
     addresses: [192.168.56.3/24]
     gateway4: 192.168.56.1
  version: 2
' > /etc/netplan/00-installer-config.yaml

sudo netplan apply

sudo ssh-keygen
sudo ssh-copy-id osboxes@192.168.56.4
sudo ssh osboxes@192.168.56.4

echo 'web' > /etc/hostname

sudo apt-get update -y
sudo apt-get install -y ansible



sudo ansible-playbook playbook.yml -i /home/osboxes/hosts  -l server1 -u root

