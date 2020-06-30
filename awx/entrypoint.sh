#!/bin/bash

set -ex

# Download awx installer
git clone https://github.com/ansible/awx.git
cd awx
git checkout $1
cd installer

# Install AWX
ansible-playbook -i inventory install.yml -e create_preload_data=false -e docker_compose_dir=/tmp/awxcompose

# Wait for awx to be alive
until $(curl --output /dev/null --silent --head --fail http://localhost/api/v2/ping); do
    printf '.'
    sleep 5
done

# Run test script
cd ../..
./$2