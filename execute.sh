#!/bin/sh
ansible-playbook main.yml -i production/inventory.yml -K
