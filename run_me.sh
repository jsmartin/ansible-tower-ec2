#! /bin/bash -ex

ansible-playbook -i inventory/hosts fetch_tower.yml -v
ansible-playbook -i inventory/hosts setup.yml -v 
ansible-playbook -i tower_setup/tmp/myhosts tower_setup/tmp/site.yml -u ubuntu -s -v