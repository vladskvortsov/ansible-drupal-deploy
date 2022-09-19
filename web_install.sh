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

sudo apt-get update -y
sudo apt-get install -y ansible

git clone https://github.com/vladskvortsov/ansible-drupal-deploy.git

sudo ansible-playbook playbook.yml -i ~/ansible-drupal-deploy/hosts.ini -u root

#ssh -p 2000 osboxes@192.168.88.223
#ssh -p 2020 osboxes@192.168.88.223
