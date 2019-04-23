#!/bin/bash

echo "yeh samba ki script ha"

yum install samba-* -y

cd

mkdir /public

mkdir /private

wget -A.conf 'https://raw.githubusercontent.com/hritvik12/hritviksc/master/smb.conf' -P /etc/samba/

semanage fcontext -a -t samba_share_t '/public(/.*)?'

semanage fcontext -a -t samba_share_t '/private(/.*)?'

restorecon -vvRF /public/

restorecon -vvRF /private/

chmod 777 /public/

chmod 777 /private/

testparm

useradd user1

useradd user2

smbpasswd -a user1

smbpasswd -a user2

systemctl start smb nmb

systemctl enable smb nmb

firewall-cmd --permanent  --add-service=samba

firewall-cmd --reload

echo"ssh completed"

ssh root@192.168.0.100

