#!/bin/bash

echo ' Creating the directories... '
mkdir /etc/public
mkdir /etc/adm
mkdir /etc/ven
mkdir /etc/sec

echo ' Creating the users and setting passwords... '
adduser -m carlos
carlos:carlos123 | chpasswd

adduser -m maria
maria:maria123 | chpasswd

adduser -m joao
joao:joao123 | chpasswd

adduser -m debora
debora:debora123 | chpasswd

adduser -m sebastiana
sebastiana:sebastiana123 | chpasswd

adduser -m roberto
roberto:roberto123 | chpasswd

adduser -m josefina
josefina:josefina123 | chpasswd

adduser -m amanda
amanda:amanda123 | chpasswd

adduser -m rogerio
rogerio:rogerio123 | chpasswd

echo ' Creating the groups... '
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo ' Adding the users to respective groups... '
usermod -aG GRP_ADM carlos
usermod -aG GRP_ADM maria
usermod -aG GRP_ADM joao

usermod -aG GRP_VEN debora
usermod -aG GRP_VEN sebastiana
usermod -aG GRP_VEN roberto

usermod -aG GRP_SEC josefina
usermod -aG GRP_SEC amanda
usermod -aG GRP_SEC rogerio

echo " Setting the groups' ownerships and the permissions... "
chmod 777 /etc/public

chown root:GRP_AMD /etc/adm
chmod 770 /etc/adm

chown root:GRP_VEN /etc/ven
chmod 770 /etc/ven

chown root:GRP_SEC /etc/sec
chmod 770 /etc/sec

echo ' Finished... '
