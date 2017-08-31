#!/bin/bash
#yum install -y puppet
echo "192.168.56.100 puppetserver.minsk.epam.com" >> /etc/hosts
curl -k https://puppetserver.minsk.epam.com:8140/packages/current/install.bash | sudo bash
#ping -c 60 chefserver > /dev/null 2>&1