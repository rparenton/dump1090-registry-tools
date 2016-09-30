#!/bin/bash

WHOAMI=`whoami`

# Export CSV files
mysql -p < export_registry_csv.sql
mv /var/lib/mysql/dump1090/*.csv .
chown $WHOAMI:$WHOAMI *.csv
chmod 600 *.csv

### ICAO type overrides ###

# BLCF (Dreamlifter)
sed -i 's/N249BA,B744/N249BA,BLCF/g' faa_registry.csv
sed -i 's/N718BA,B744/N718BA,BLCF/g' faa_registry.csv
sed -i 's/N747BC,B744/N747BC,BLCF/g' faa_registry.csv
sed -i 's/N780BA,B744/N780BA,BLCF/g' faa_registry.csv

# BSCA (Shuttle Carrier Aircraft)
sed -i 's/N905NA,B741/N905NA,BSCA/g' faa_registry.csv
sed -i 's/N911NA,B74R/N911NA,BSCA/g' faa_registry.csv
