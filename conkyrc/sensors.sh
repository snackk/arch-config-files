#!/bin/bash
cpu=$(sensors | grep "Core 1:" | cut -c17-20)
graphic=$(sensors | grep id | cut -c17-20)
max_cpu=50

if [[ "$cpu" -ge $max_cpu ]]; then 
	echo -n "CPU "'${color1}'$cpu'${color}${color2}'"ºC"'${color}'
else echo -n "CPU "'${color2}'$cpu"ºC"'${color}'
fi	

if [[ "$graphic" -ge $max_cpu ]]; then 
	echo -n "  GRAPHICS "'${color1}'$graphic'${color}${color2}'"ºC"'${color}'
else echo -n "  GRAPHICS "'${color2}'$graphic"ºC"'${color}'
fi	
