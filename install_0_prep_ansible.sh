#!/bin/bash
# DESC: setup ansible control host
# DATE: 20190502
# WHO: Chris Ruettimann cruettimann@uniqconsulting.ch

set -e
PDIR=/etc/ansible/projects-dev
rpm -q epel-release >/dev/null 2>&1 || yum -y install epel-release
rpm -q ansible >/dev/null 2>&1 || yum -y install ansible
mkdir $PDIR
cd $PDIR
test -d roles && rm -rf roles
git clone https://github.com/uniQconsulting-ag/ansible.os_basis_setup_project.git
cd cd $PDIR/ansible.os_basis_setup_project
ansible-galaxy install uniqconsulting.open_vm_tools uniQconsulting.os_basic
