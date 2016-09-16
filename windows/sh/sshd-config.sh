#!/bin/sh

mkpasswd -l > /etc/passwd 
mkgroup -l > /etc/group 

chmod +r /etc/group
chmod +r /etc/passwd

chmod +rwx /var

ssh-host-config
