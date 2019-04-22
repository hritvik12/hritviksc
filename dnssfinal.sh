#!/bin/bash

echo " Welcome to dns configration script"

yum install bind* -y

wget https://github.com/hritvik12/hritviksc/blob/master/named.conf -P /etc/

wget https://github.com/hritvik12/hritviksc/blob/master/forward1 -P /var/named/

chgrp named	/var/named/forward1

systemctl restart named

firewall-cmd --permanent --add-port=53/tcp

firewall-cmd --permanent --add-port=53/udp

firewall-cmd --reload

nslookup www.google.com
echo "ban gyi bc"

