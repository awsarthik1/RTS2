#!/bin/bash

#sed -ie 's/"//g' 3test1a.html
#sed -ie 's/"//g' 3test1a.html
#sed -ie 's/{//g' 3test1a.html
#sed -ie 's/\\//g' 3test1a.html
#sed -e 's/MessageId//g' 3test1a.html
#sed -e 's/message//g' 3test1a.html 
#sed -e 's/MessageId//g' 3test1a.html
#sed -i 's/~/\n/g' 3test1a.html
#sed -ie 's/,/\n/g' 3test1a.html

sed -i -e 's/"//g' -e 's/"//g' -e 's/{//g' -e 's/\\//g' -e 's/~/\n/g' -e 's/,/\n/g' 3test1a.html


#grep for nagios 
#echo nagios log info 
#grep -i 'Message :\|Host:\|Host_State:\|Address:\|Service_State:\|Date/Time:\|Status Info:\|Timestamp :' 3test1a.html 

#echo cloudwatch log info 
#grep for cloudwatch
#grep -i 'AlarmName:\|AlarmDescription:\|AWSAccountId:\|NewStateValue:\|NewStateReason:\|StateChangeTime:\|ComparisonOperator:\|Threshold:\|Dimensions:' 3test1a.html

echo
echo
echo
echo
log_filter () {
	echo nagios logs info 
	grep -i 'Message : nagios\|Host:\|Host_State:\|Service:\|Address:\|Service_State:\|Date/Time:\|Status Info:\|Timestamp :' 3test1a.html
	echo cloudwatch logs info 
	grep -i 'AlarmName:\|AlarmDescription:\|AWSAccountId:\|NewStateValue:\|NewStateReason:\|StateChangeTime:\|ComparisonOperator:\|Threshold:\|Dimensions:' 3test1a.html
}



log_filter > /home/qentellirts/experiment/filtered_logs4
 


filter_metricname () {
	grep -i 'Service:' 3test1a.html|cut -b 10-30
}

filter_metricname

n=filter_metricname

for i in filter_metricname
do 
echo "MetricName: $n "
done





#metricname='grep -i 'Service:' 3test1a.html|cut -b 10-30'

#metricname=ls

#echo 
#$metricname


#filter_MetricName () {
#	MetricName = grep -i 'Service:'|cut -b 10-20
#	print MetricName
#}


#filter_MetricName

#grep -i "Message : Nagios" /home/qentellirts/experiment/3test1a.html





#if [ grep -i "Message : Nagios" 1test1a.html==true ]
#if [ true == true ] 
#then
# print from host to ~ 
# print from service to ~
# echo this is nagios record
#else
#  echo this is cloudwatch record
#fi 
