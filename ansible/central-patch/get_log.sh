#!/bin/sh
output=$(awk '/changed:/,/warnings/' /var/log/ansible.log);
awk -v rows=

#awk -v var="$output" 'BEGIN{printf var}' 
#awk -v ltr="$output" 
#changed=$(awk '/changed:/,/=>/' $output)
#echo $output
