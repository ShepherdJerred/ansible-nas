#!/bin/bash
set -x
set -e

ansible-playbook main.yml -i production/inventory.yml -e@vars/vaulted_vars.yml "$@"
