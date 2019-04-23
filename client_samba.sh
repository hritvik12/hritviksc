#!/bin/bash

yum install samba-client cifs-utils

smbclient -L 192.168.0.100

