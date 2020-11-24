#! /bin/bash

isPartTime=1
isFullTime=2
EmpRateperHr=20
WorkingDays=20
maxHrsInmonth=100

TotalempHr=0
TotalWorkingDay=0

while [[ $TotalempHr -le $maxHrsInmonth && $TotalWorkingDay -le $WorkingDays ]]
do
        (($TotalWorkingDay+1))
       empcheck=$(($RANDOM%3))

	case $empcheck in
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
        salary=$(($empHrs*$EmpRateperHr))
 Totalsalary=$(($Totalsalary+$salary))
done


echo -ne "\n Total Salary For Month Of Employee Is : $Totalsalary\n"

