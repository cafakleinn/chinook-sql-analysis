#!/bin/bash

sqlfile=$1
expected=$2

if [[ -z "$expected" ]]
then
	psql -q < $sqlfile 
else	
	psql -q < $sqlfile | diff -bB --side-by-side --suppress-common-lines - $expected
	if [[ $? -eq 0 ]]
	then
		echo "Match expected file"
	else
		echo "Does not match expected file"
	fi
fi
