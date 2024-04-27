#!/usr/bin/env bash

CFG_PATH=/.config/retroarch/retroarch.cfg

sed -i -E 's/(menu_show_core_updater.+)/menu_show_core_updater = "true"/g' $CFG_PATH
sed -i -E 's/(core_updater_show_experimental_cores.+)/core_updater_show_experimental_cores = "true"/g' $CFG_PATH
