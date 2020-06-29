#!/bin/bash

git clone https://github.com/ansible/awx.git
cd awx/installer
ansible-playbook -i inventory install.yml -e create_preload_data=false
until $(curl --output /dev/null --silent --head --fail http://localhost/api/v2/ping); do
    printf '.'
    sleep 5
done
/bin/sh