# ansible.os_basis_setup_project
Standalone Host Configuration with Ansible (CentOS7)

## Setup host and do basic configuration
* Install CentOS7
  * minimal software install
  * do not create first user
  * NTP as needed
  * Network Settings as needed
  * Partition
    * swap -> 2GB or larger (1st partition)
    * / -> 20GB with <xfs|ext4> or larger (2nd partition)

* login via SSH as root
  * Setup ansible and project
    * ```wget -O - https://raw.githubusercontent.com/uniQconsulting-ag/ansible.os_basis_setup_project/master/install_0_prep_ansible.sh | sh ```
    * ``` curl https://raw.githubusercontent.com/uniQconsulting-ag/ansible.os_basis_setup_project/master/install_0_prep_ansible.sh | sh ```
  * Define vars according your needs
    * ```cd /etc/ansible/projects/ansible.os_basis_setup_project/```
    * ```vim install_1_os.yml```
  * Run the playbook
    * ```cd /etc/ansible/projects/ansible.os_basis_setup_project/```
    * ```ansible-playbook install_1_os.yml```
  * Remove ansible if not needed anymore
    * ```cd /etc/ansible/projects/ansible.os_basis_setup_project/```
    * ```bash install_9_remove_ansible.sh```
