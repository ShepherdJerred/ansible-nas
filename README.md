# nas-ansible
Ansible playbook for setting up my NAS with Plex, Netdata, and Resilio Sync

## Setup
`ansible-galaxy install -r requirements.yml`

## Playbook Requirements
* A .htpasswd file in files/.htpasswd
* AWS credentials used for setting up SSL certificates defined in vars/aws\_credentials.yml
* A filebot license file in files/FILEBOT_LICENSE

## Caveats
* Plex symlink is not configurable
* Plex is not stopped before moving the library directory
* Plex symlink doesn't copy files over if they exist
* UFW could potentially leave firewall in bad state. Might want to disable firewall before running UFW commands
* Most of these tasks should be more configurable/robust, but since this is for personal use I don't care too much
* Setup plex media server through webui
  * Not really possible to automate this (at least as far as I know)
* Setup resilio sync through webui
  * Could probably automate some of this, but it's not worth looking into right now
