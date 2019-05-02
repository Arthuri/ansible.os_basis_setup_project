# ansible.os_basis_setup_project
Standalone Host Configuration with Ansible (CentOS7)
## Prepare for setup
* Install CentOS7
  * minimal software install
  * do not create first user
  * NTP as needed
  * Network Settings as needed
  * Partition
    * swap -> 2GB or larger (1st partition)
    * / -> 10GB with <xfs|ext4> or larger (2nd partition)

* login via SSH as root
  * ```wget -O - https://raw.githubusercontent.com/uniQconsulting-ag/ansible.os_basis_setup_project/master/install_0_prep_ansible.sh | sh ```
