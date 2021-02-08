# Ansible Playbook
[![License](https://img.shields.io/github/license/shepherdjerred/ansible-playbook)](https://github.com/shepherdjerred/ansible-playbook/LICENSE)
[![Build Status](https://img.shields.io/github/workflow/status/shepherdjerred/ansible-playbook/ansible-lint)](https://github.com/shepherdjerred/ansible-playbook/actions)

A giant Ansible playbook for managing my servers and personal devices.

## Setup
`ansible-galaxy install -r requirements.yml`

## Caveats
* UFW could potentially leave firewall in bad state. Might want to disable firewall before running UFW commands
* Most of these tasks should be more configurable/robust, but since this is for personal use I don't care too much
