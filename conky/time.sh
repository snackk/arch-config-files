#!/bin/bash
batt=$(acpi | grep Battery) 
batt_dis=$(echo $batt | cut -c12-22)
batt_full=$(echo $batt | cut -c12-15)

if [ "$batt_dis" == "Discharging" ]; then
  echo -n '${color2}'$(echo $batt | cut -c30-34)h'${color}'
else
	if [ "$batt_full" == "Full" ]; then
  		echo -n '${color1}'"Battery full"'${color}'
	else echo -n '${color2}'$(echo $batt | cut -c27-31)h'${color}'
	fi	
fi
