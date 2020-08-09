# nas-ansible
Ansible playbook for setting up my NAS with Plex, Netdata, and Resilio Sync

## Manual Steps
This ansible playbook is mostly automated but it still requires some manual action.
1. Create user jerred
  * This could might be possible to automate but the problem is that this script logs in as me. If I could login as root and then switch to my user that'd be okay, but since I block root login in this playbook that isn't possible.
2. Setup plex media server through webui
  * Not really possible to automate this (at least as far as I know)
3. Setup resilio sync through webui
  * Could probably automate some of this, but it's not worth looking into right now

## Playbook Requirements
* A .htpasswd file in files/.htpasswd
* AWS credentials used for setting up SSL certificates defined in vars/aws\_credentials.yml
* A filebot license file in files/FILEBOT_LICENSE

## Caveats
* Plex symlink is not configurable
* Plex is not stopped before moving the library directory
* Plex symlink doesn't copy files over if they exist
* UFW could potentially leave firewall in bad state. Might want to disable firewall before running UFW commands
* Updating the SSL cert requires this playbook to be run. Ideally it'd happen without intervention
* Rust/cargo install is kinda jank
  * Check for existing installation is definitely broken
* Most of these tasks should be more configurable/robust, but since this is for personal use I don't care too much
