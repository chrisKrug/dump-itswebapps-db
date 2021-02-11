#!/bin/sh

_date_today=$(date +"%m-%d-%y")
_date_yesterday=$(date -d '-1 day' +"%m-%d-%y")
_date_before_yesterday=$(date -d '-2 day' +"%m-%d-%y")
#echo $_date_today $_date_yesterday $_date_before_yesterday

if [[ -f "/root/django_tools/${_date_before_yesterday}-itswebapps.sql" ]]; then
#	echo "Remove day before yesterday's backup"
	mysqldump -u itswebappsdumper --databases itswebapps > /root/django_tools/${_date_today}-itswebapps.sql
	rm -f /root/django_tools/${_date_before_yesterday}-itswebapps.sql
fi
