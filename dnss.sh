#!/bin/bash

echo " Welcome to dns configration script"

yum install bind*

cp Downloads/named.conf	/etc/

cp Downloads/forward1	/var/named/

chgrp /named	/var/named/forward1

nslookup google.com
echo "ban gyi bc"

