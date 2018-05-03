# MariaDB Server Demo (With Encryption)

### Prerequisites:

* [Vagrant 2.0.0 +](https://www.vagrantup.com/downloads.html)
* [Ansible 2.4.0.0 +](http://docs.ansible.com/ansible/latest/intro_installation.html#installation)
* [VirtualBox 5.1.28 +](https://www.virtualbox.org/wiki/Downloads)

### About:

This automation project will install CentOS 7.4 and MariaDB 10.2 on a VirtualBox client.  This is intended for easy setup of a development or evaluation environment. Data at rest encryption is enabled by default.

```
[vagrant@node1 ~]$ mysql
[mariadb] Password:
```

Additionally the PAM plugin has been activated using the 'vagrant' user account with a default password of 'vagrant'.

### Activated Engines

* InnoDB
* Aria
* MyISAM
* SEQUENCE
* TokuDB
* ROCKSDB
* OQGRAPH
* CONNECT
* SPIDER
* MEMORY
* CSV

### Installation Instructions:

Open a terminal window and change to a folder of your choosing. Run the following steps to install:

1. `git clone https://github.com/toddstoffel/single_mariadb_instance.git`
1. cd into cloned folder
1. `vagrant plugin install vagrant-vbguest`
1. `vagrant up && ansible-playbook -i inventory provision.yml`
1. `vagrant ssh node1`

The virtualbox image can be removed by running `vagrant destroy --force` in the folder where it was created.

### For More Information:

* [Data at Rest Encryption](https://mariadb.com/kb/en/library/data-at-rest-encryption/)
* [Authentication Plugin - PAM](https://mariadb.com/kb/en/library/authentication-plugin-pam/)

### Need Additional Help?

* [Consulting](https://mariadb.com/services/consulting)
