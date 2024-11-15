#!/bin/bash
while read -r line; do
	echo "$line" | grep -Eo '([0-9]{1,3}\.{3}[0-9]{1,3}' > /dev/null
	if [ $? -eq 0 ]; then
		echo "Valid: $line"
	else
		echo "Invalid: $line"
	fi
done < /etc/hosts
