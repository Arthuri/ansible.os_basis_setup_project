#!/bin/bash -e
# DESC: setup ansible control host
# DATE: 20190502
# WHO: Chris Ruettimann cruettimann@uniqconsulting.ch


PDIR=/etc/ansible/projects
rpm -q epel-release >/dev/null 2>&1 || yum -y install epel-release
rpm -q git >/dev/null 2>&1 || yum -y install ansible git
rpm -q ansible >/dev/null 2>&1 || yum -y install ansible git

# ansible generic setup
ansibleconfigfile="/etc/ansible/ansible.cfg"
sed -i 's|^#inventory.*|inventory      = /etc/ansible/hosts|g' $ansibleconfigfile
sed -i 's|^#roles_path.*|roles_path    = /etc/ansible/roles|g' $ansibleconfigfile
sed -i 's|^#remote_user.*|remote_user = root|g' $ansibleconfigfile
sed -i 's|^#log_path.*|log_path = /var/log/ansible.log|g' $ansibleconfigfile
sed -i 's|^#nocows.*|nocows = 1|g' $ansibleconfigfile

mkdir $PDIR || true
cd $PDIR
git clone https://github.com/uniQconsulting-ag/ansible.os_basis_setup_project.git
cd $PDIR/ansible.os_basis_setup_project
test -d roles && rm -rf roles
ansible-galaxy install uniqconsulting.open_vm_tools uniqconsulting.os_basic

ansible-galaxy search uniqconsulting | cat

echo done
