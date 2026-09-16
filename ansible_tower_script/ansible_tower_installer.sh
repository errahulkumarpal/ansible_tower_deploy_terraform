#!/bin/bash
sudo dnf update -y
sudo dnf install -y ansible-core
ansible --version
tar xvzf ansible-automation-platform-setup-2.4-16.tar.gz