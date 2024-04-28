#!/usr/bin/env bash

type sshd 2>&1 1> /dev/null 2>/dev/null || exit 1

systemctl enable ssh &>/tmp/anbernic-ssh-service.log
systemctl start ssh &>/tmp/anbernic-ssh-service.log

exit 0
