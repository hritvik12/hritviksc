#!/bin/bash

yum install mariadb*

systemctl start mariadb

mysql_secure_installation

mysql -u root -p
