#!/bin/bash

KEY1=$(openssl rand 32 -hex|tr /a-z/ /A-Z/)
KEY2=$(openssl rand 32 -hex|tr /a-z/ /A-Z/)
FILE=/etc/my.cnf.d/keys.txt

if [ ! -f $FILE ]; then
	printf "1;$KEY1\n2;$KEY2\n" > $FILE
fi