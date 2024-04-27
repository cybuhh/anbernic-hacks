#!/usr/bin/env bash

test -f ssh-authorized_keys || exit 1

CURRENT_DIR=$(dirname -- "$0")

test -d /home/game/.ssh || mkdir /home/game/.ssh
cp "$CURRENT_DIR/SSH-Enabler/ssh-authorized_keys" /home/game/.ssh/authorized_keys
