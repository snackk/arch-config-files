#!/bin/bash

source $HOME/git/arch-config-files/conky/conky_utils.conf

batt=$(acpi | grep Battery) 
batt_dis=$(echo $batt | cut -c12-22)
batt_full=$(echo $batt | cut -c12-15)
batt_perc=$(echo $batt | cut -c25-26)

if [ "$batt_dis" == "Discharging" ]; then
	if [[ "$batt_perc" -le $MIN_BAT_THRESHOLD ]]; then 
		print_label_string_color1 "BATTERY " "$(echo $batt_perc)% "
	else 
		print_label_string_color2 "BATTERY " "$(echo $batt_perc)% "
	fi
	print_label_string_color2 "" " $(echo $batt | cut -c30-34)H"
else
	if [ "$batt_full" == "Full" ]; then
  		print_label_string_color1 "BATTERY " "CHARGED"
	else 
		print_label_string_color2 "BATTERY " "CHARGING "
		print_label_string_color2 "" " $(echo $batt | cut -c27-31)H"
	fi	
fi
