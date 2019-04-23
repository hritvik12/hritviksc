#!/bin/bash

echo " Welcome to apache config "

sudo yum install httpd* -y

wget -A.conf 'https://raw.githubusercontent.com/hritvik12/hritviksc/master/1.conf'

cp 1.conf /etc/httpd/conf.d/

wget https://raw.githubusercontent.com/hritvik12/hritviksc/master/index.html 

cp index.html /var/www/html/

rm /etc/hosts

rm /etc/resolv.conf

systemctl restart httpd

curl www.google.com

