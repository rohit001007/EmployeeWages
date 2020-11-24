#! /bin/bash

echo -ne "\n1. Part Time \n2. Full Time \n\nEnter Empolyee Type : "
read choice

WagePerHr=20
FullDayHrs=8
PartTimeHrs=4

case $choice in

	1)
        		dailywages=$(($WagePerHr*$PartTimeHrs))
        		echo -ne "\n The Part Time Wages Of Empoyee Is : $dailywages \n"
			;;

	2)

        		dailywages=$(($WagePerHr*$FullDayHrs))
        		echo -ne "\n The Daily Wages Of Empoyee Is : $dailywages \n"
			;;

	*)
	        	echo -ne "\n The Employee Is Absent \n"
			;;
esac

