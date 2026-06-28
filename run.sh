#!/usr/bin/env bash
set -e

echo "=== Step 1: Update packages ==="
sudo dnf update -y

echo "=== Step 2: Bootstrapping dependencies ==="
ansible-galaxy collection install -r requirements.yml

echo "=== Step 3: Running the main playbook ==="
ansible-playbook -i inventory.ini site.yml --ask-become-pass --ask-vault-pass
