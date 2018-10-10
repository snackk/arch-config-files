#!/bin/bash

source $HOME/git/arch-config-files/conky/conky_utils.conf

print_label_string_color2 "SNACKKDRIVE " "$(ssh -p 1337 pi@snackkdrive.ddns.net "/opt/vc/bin/vcgencmd measure_temp" | cut -c6-9)°C"

