#!/bin/bash
yum install -y puppetyum install puppet
echo "192.168.56.100 puppetserver.minsk.epam.com" >> /etc/hosts
#ping -c 50 chefserver > /dev/null 2>&1