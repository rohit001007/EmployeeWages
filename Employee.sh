#! /bin/bash

WagePerHr=20
FullDayHrs=8
PartTimeHrs=4

var=$(($RANDOM%3))

if [ $var -eq 1 ]
then
        dailywages=$(($WagePerHr*$FullDayHrs))
	echo -ne "\n The Full Day Wage Of Employee Is  : $dailywages\n"

elif [ $var -eq 2 ]
then
        dailywages=$(($WagePerHr*$PartTimeHrs))
        echo -ne "\n The Part Time Wage Of Employee Is  : $dailywages\n"

else
        echo -ne "\n Employee Is Not Present...!\n"
fi
