#!/bin/bash

output=$(tvservice -s)

if [[ $output =~ "0x400000 [LCD]" ]]; then
  echo -n 1 > /sys/class/backlight/rpi_backlight/bl_power
else
  echo standby 0 | cec-client -s > /dev/null
fi
