#!/usr/bin/env bash

type sshd 2>&1 1> /dev/null 2>/dev/null || exit 1

CURRENT_DIR=$(dirname -- "$0")

systemctl status ssh | grep active 2>&1 1> /dev/null 2>/dev/null 

STATUS=$([ $? -eq 0 ] && echo "enabled" || echo "disabled")

mv "$CURRENT_DIR/$0" "$CURRENT_DIR/ssh-status-${STATUS}.sh"

sync

exit 0
