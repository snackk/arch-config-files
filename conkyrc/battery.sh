	#!/bin/bash
batt=$(acpi | grep Battery) 
batt_dis=$(echo $batt | cut -c12-22)	#Discharging string
batt_perc=$(echo $batt | cut -c25-26)
min_bat=15

if [ "$batt_dis" == "Discharging" ]; then
	if [[ "$batt_perc" -le $min_bat ]]; then 
		echo -n "BATTERY "'${color1}'$batt_perc%'${color}'
	else echo -n "BATTERY "'${color2}'$batt_perc%'${color}'
	fi	
else echo -n "BATTERY "'${color2}'"Charging"'${color}'
fi

