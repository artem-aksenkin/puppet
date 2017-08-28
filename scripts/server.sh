#!/bin/bash
yum install -y net-tools
rpm -Uvh /tmp/chef-pkgs/chef-server-core-12.16.2-1.el7.x86_64.rpm
chef-server-ctl reconfigure
chef-server-ctl user-create artem Artem Aksenkin artem@chef.io '1b2n3m' --filename /vagrant/artem.pem
chef-server-ctl org-create mnt 'Lab, Inc.' --association_user artem -f /vagrant/MNT-validator.pem
rpm -Uvh /tmp/chef-pkgs/chef-manage-2.5.4-1.el7.x86_64.rpm
chef-server-ctl reconfigure
chef-manage-ctl reconfigure --accept-license
ping -c 50 192.168.56.110 > /dev/null 2>&1
ping -c 50 192.168.56.111 > /dev/null 2>&1