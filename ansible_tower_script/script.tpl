#!/bin/bash
sudo dnf update -y
sudo dnf install -y ansible-core
ansible --version

tar xvzf "${current_dir}/ansible_tower_script/${file_name}"