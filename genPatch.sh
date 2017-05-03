#!/bin/bash
date=$(date +"%m-%d-%Y")
awk -F "\"*,\"*" '{print "ansible-playbook -i hosts site.yml --tags \"command\" -vvv -e \"command='"'"'yum -y update --advisory=" $3 "'"'"'\" -e \"hosts="$1"\" --extra-vars='"'"'ansible_become_pass=b6a-01ba)d3d'"'"'"}' $1 | grep "=RHSA" > iw_patch_$date.sh
chmod u+x iw_patch_$date.sh
