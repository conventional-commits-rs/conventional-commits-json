#!/bin/sh
#
# Checks if the description length is less than 80.
output=$(jq '.[].desc | length > 80' types.json)
if [[ $output =~ "true" ]]; then
	exit 1
fi
