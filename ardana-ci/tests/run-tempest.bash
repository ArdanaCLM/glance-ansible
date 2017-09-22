#!/bin/bash

set -eux
set -o pipefail

ansible-playbook -i hosts/verb_hosts tempest-test-resources.yml

sudo -u tempest /opt/stack/service/tempest/bin/ardana-tempest.sh <<< "+tempest\.api\.image"
