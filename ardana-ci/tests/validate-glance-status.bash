#!/bin/bash

ansible-playbook -i hosts/verb_hosts glance-status.yml
