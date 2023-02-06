# Ansible playbook for deploying drupal(or other CMS), using docker compose.

Drupal temp site with mysql database preinstalled.



### What this Playbook do:

- Setup passwordless sudo
- Create a new user with sudo privileges
- Sets authorized key for new user
- Setup firewall for ssh conections
- Install addition packages
- Install Docker, Docker compose plugin
- Deploy drupal and mysql db with preinstalled volumes
- Add domain name to the hosts file

To install ansible run:

```sh
sudo apt-get update -y
sudo apt-get install -y git python3-pip
pip install -y --upgrade ansible
```

then download this repository:

```sh
 git clone https://github.com/vladskvortsov/ansible-drupal-deploy.git
```

and run playbook specifying path to hosts.ini, and user `ubuntu`:

```sh
sudo ansible-playbook ~/ansible-drupal-deploy/playbook.yml -i ~/ansible-drupal-deploy/hosts.ini -u ubuntu
```

### Variables

**created_username**
Put here [roles/add-user-and-ssh-key/vars/main.yml][user-var] name of sudo user you wish to add.

**domain_name**
Put here [group_vars/all.yml][domain-var] your hosted domain name.


### Own
***

To deploy your own project replace files in `project` directory with yours(including your docker-compose.yml file) and be free to run a playbook.



[user-var]:<https://github.com/vladskvortsov/ansible-drupal-deploy/blob/master/roles/add-user-and-ssh-key/vars/main.yml>
[domain-var]: <https://github.com/vladskvortsov/ansible-drupal-deploy/blob/master/group_vars/all.yml>
