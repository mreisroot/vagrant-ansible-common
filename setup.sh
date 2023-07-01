#!/bin/bash

# Adicionar PPA do Ansible
sudo apt update
sudo apt install -y software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible

# Instalar o Ansible
sudo apt install -y ansible
