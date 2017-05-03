Ansible-CentralPatch
=========

Ansible play to manage patching Linux servers

### Instructions

#### Command Line Useage
To install package: From the command line you need to specify the following values ans extra_vars entry:

```
ansible-playbook -i hosts site.yml --tags "install" -vvv -e "package=<name_package>" -e "hosts=<target_hosts>" --extra-vars='ansible_become_pass=<password_sudo>'
```

ToDo: Reboot servers after patching.

You may opt to specify what tags to act on. The 5 tags allow you to only run parts of the plays.

* Options:
  * rhel     - Patch Red Hat Enterprise Linux Servers with minimal security
  * install  - Install any package
  * upgrade  - Upgrade package (you can add * to upgrade all)
  * command  - Run any commands
  * test     - Just for testing purposes

This example would perform package pinning:

```
ansible-playbook -i hosts site.yml --tags "command" -vvv -e "command='uname -a'" -e "hosts=test" --extra-vars='ansible_become_pass=A3rt243t24'
```

### Contribution Instructions
 * Every YAML file must follow this format:

```
---
   
# Location <PATH TO FILE>
# <PURPOSE/DESCRIPTIVE STATEMENT>

<content>
```
You can write to support@stackfire.com Thx!
