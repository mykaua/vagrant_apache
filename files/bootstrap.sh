#!/bin/bash

echo "Installing Ansible..."
apt-get update
apt-get install -y apache2 php
if ! [ -L /var/www/html ]; then
  rm -rf /var/www/html
  ln -fs /home/ubuntu/conf/ /var/www/html
fi
