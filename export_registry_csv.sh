#!/bin/bash

WHOAMI=`whoami`

mysql -p < export_registry_csv.sql
mv /var/lib/mysql/dump1090/*.csv .
chown $WHOAMI:$WHOAMI *.csv
chmod 600 *.csv
