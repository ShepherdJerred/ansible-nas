#!/bin/bash
ansible-playbook main.yml -i production/inventory.yml -e@vars/vaulted_vars.yml --limit macbook-pro.home.shepherdjerred.com --ask-become-pass --ask-vault-pass
