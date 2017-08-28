#!/bin/bash

#Net-tools install
yum install -y net-tools

#Extract PE package
tar -xf /tmp/puppet-pkgs/puppet-enterprise-2017.2.3-el-7-x86_64.tar.gz


#Add PuppetNodes DNS info to hosts file
echo "192.168.56.110 host1" >> /etc/hosts
echo "192.168.56.111 host2" >> /etc/hosts
echo "192.168.56.100 puppetserver, puppetserver.minsk.epam.com" >> /etc/hosts


#ping -c 10 192.168.56.110 > /dev/null 2>&1
#ping -c 10 192.168.56.111 > /dev/null 2>&1