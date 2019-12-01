# nas-ansible
Ansible playbook for setting up my NAS with Plex, Netdata, and Resilio Sync

## Manual Steps
This ansible playbook is mostly automated, but it still requires some manual action.
1. Create user jerred
  * This could might be possible to automat, but the problem is that this script logs in as me. If I could login as root and then switch to my user that'd be okay, but since I block root login that isn't possible.
2. Setup plex media server through webui
  * Not really possible to automate this (at least as far as I know)
3. Setup resilio sync through webui
  * Could probably automate some of this, but not worth looking into right now

## Requirements
* A .htpasswd file in files/.htpasswd
* AWS credentials defines in vars/aws\_credentials.yml

## Caveats
* Plex symlink is not configurable, doesn't stop plex before moving directory
* Plex symlink doesn't copy files over if they exist
* UFW could potentially leave firewall in bad state. Might want to disable firewall before running UFW commands
* netdata seems to be installing on every run. Not good?
* certbot was setup after the fact. Might not actually work

## TODO
* Configure netdata alarms
* Install zsh
* Install exa
* Install filebot
* Setup task for moving files from downloads
* Add logic for only running certbot installation when needed

