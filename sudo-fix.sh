#!/usr/bin/env bash

chown -R root:root /etc/sudoers.d
chown root:root /etc/sudoers
chown root:root /usr/lib/sudo/sudoers.so
chmod 4600 /usr/lib/sudo/sudoers.so

chown root:root /usr/bin/sudo
chmod 4755 /usr/bin/sudo

sync

exit 0