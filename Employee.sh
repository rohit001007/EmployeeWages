#! /bin/bash

var=$(($RANDOM%2))

if [ $var -eq 1 ]
then
	echo -ne "\n Employee Is Present\n"
else
	echo -ne "\n Employee Is Not Present\n"
fi

