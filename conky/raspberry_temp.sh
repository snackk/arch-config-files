#!/bin/bash
temp_o=$(ssh -p 1337 pi@snackkdrive.ddns.net "/opt/vc/bin/vcgencmd measure_temp" | cut -c6-9)°C
#echo -n "SNACKKDRIVE "'${color2}'$temp_o'${color}' " MARK1 "'${color2}'$temp_m'${color}'
echo -n "SNACKKDRIVE "'${color2}'$temp_o'${color}'

