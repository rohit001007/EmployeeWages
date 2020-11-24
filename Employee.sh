#! /bin/bash

WagePerHr=20
FullDayHrs=8

var=$(($RANDOM%2))

if [ $var -eq 1 ]
then
        dailywages=$(($WagePerHr*$FullDayHrs))
	echo -ne "\n The Daily Wage Of Employee Is  : $dailywages\n"

else
        echo -ne "\n Employee Is Not Present...!\n"
fi
