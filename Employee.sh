#! /bin/bash

isPartTime=1
isFullTime=2
EmpRateperHr=20
WorkingDays=20
maxHrsInmonth=100

TotalempHr=0
TotalWorkingDay=0

function getWorkingHrs ()
{
        case $1 in
                        $isFullTime)
                                        empHrs=8
                                ;;
                        $isPartTime)
                                        empHrs=4
                                ;;

                                *)
                                        empHrs=0
                                ;;

                esac

       echo $empHrs
}

while [[ $TotalempHrs -le $maxHrsInmonth && $TotalWorkingDays -le $WorkingDays ]]
do
        (($TotalWorkingDays+1))
	empHrs=$( getWorkingHrs $(($RANDOM%3)) )
	TotalempHrs=$(($TotalempHrs+$empHrs))
done

totalsalary=$(($TotalempHrs*$EmpRateperHr))


echo -ne "\n Total Salary Of Employee Is : $totalsalary \n"

