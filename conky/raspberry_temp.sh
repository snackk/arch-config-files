#!/bin/bash
temp_o=$(ssh -p 1337 pi@owncloud.flnet.org "/opt/vc/bin/vcgencmd measure_temp" | cut -c6-9)°C
temp_m=$(ssh -p 1337 pi@mark1.darktech.org "/opt/vc/bin/vcgencmd measure_temp" | cut -c6-9)°C
#echo -n '${color2}'"ownCloudServer: "'${color}''${color3}'$temp'${color}'
echo -n "OWNCLOUD "'${color2}'$temp_o'${color}' " MARK1 "'${color2}'$temp_m'${color}'

