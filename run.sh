#!/usr/bin/env bash
set -e

echo "=== Step 1: Bootstrapping dependencies ==="
ansible-galaxy collection install -r requirements.yml

echo "=== Step 2: Running the main playbook ==="
ansible-playbook -i inventory.ini site.yml --ask-become-pass
