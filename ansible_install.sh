#/bin/bash

sudo apt-get update -y
sudo apt-get install -y git python3-pip

pip install --upgrade ansible

git clone https://github.com/vladskvortsov/ansible-drupal-deploy.git

sudo ansible-playbook ~/ansible-drupal-deploy/playbook.yml -i ~/ansible-drupal-deploy/hosts.ini -u ubuntu
