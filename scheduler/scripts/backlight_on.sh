#!/bin/bash

output=$(/opt/vc/bin/tvservice -s)

if [[ $output =~ "0x400000 [LCD]" ]]; then
  echo -n 0 > /sys/class/backlight/rpi_backlight/bl_power
else
  echo as 0 | cec-client -s > /dev/null
fi
