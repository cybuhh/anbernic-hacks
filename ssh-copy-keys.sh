#!/usr/bin/env bash

CURRENT_DIR=$(dirname -- "$0")

test -f "$CURRENT_DIR/ssh-authorized_keys" || exit 1

test -d /home/game/.ssh || mkdir /home/game/.ssh
cp "$CURRENT_DIR/ssh-authorized_keys" /home/game/.ssh/authorized_keys

sync

exit 0
