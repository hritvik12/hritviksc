#!/bin/bash

echo "yeh samba ki script ha"

yum install samba samba-common samba-client -y

cd

mkdir /public

mkdir /private

semanage fcontext -a -t samba_share_t '/public(/.*)?'

semanage fcontext -a -t samba_share_t '/private(/.*)?'

restorecon -vvRF /public/

restorecon -vvRF /private/
chmod 777 /public/

chmod 777 /private/i

vim /etc/samba/smb.conf

testparm

useradd user1

useradd user2

smbpassword -a user1

redhat

redhat

smbpassowrd -a user2

redhat

redhat

systemctl start smb nmb

systemctl enable smb nmb

firewall -cmd --permanent  --add-service=samba

firewall-cmd --reload



