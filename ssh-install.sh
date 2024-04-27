#!/usr/bin/env bash

type sshd 2>&1 1> /dev/null 2>/dev/null && exit 1

apt update -y --fix-missing
apt -y install openssh-server

sync

exit 0
