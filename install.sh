#!/bin/bash
to_install=0;
failed=0;
success=0;

for D in *; do
    if [ -d "${D}" ]; then
    	let to_install+=1;
        echo "================================"
        source "${D}/remove.sh"
        source "${D}/install.sh"
        ret_code=$?   
        if [ $ret_code -eq 0 ]; then
			echo -e "   \e[32m✔\e[39m Sucefully installed ${D}."
			let success+=1;
		else
			echo -e "   \e[31mø\e[39m Something went wrong with ${D}."
			let failed+=1;
		fi
		echo "================================"
    fi
done

echo "================================"
echo -e "   Done. Installed\e[32m $success\e[39m of total: $to_install."
echo "================================"
		