#!/usr/bin/env bash

type sshd 2>&1 1> /dev/null 2>/dev/null || exit 1

apt update
apt -y install sshd

systemctl disable ssh &>/tmp/anbernic-ssh-service.log
systemctl stop ssh &>/tmp/anbernic-ssh-service.log

exit 0
