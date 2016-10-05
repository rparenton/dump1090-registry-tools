# dump1090 Aircraft Registration Database Tools

### This project is on hold because FlightAware has provided a dump their aircraft registration database for dump1090.  See http://discussions.flightaware.com/post199217.html for more details.  Also see `status.txt` for a list of major manufacturers with incomplete data in this project.

File | Description
---- | -----------
export_registry_csv.sh | Runs `export_registry_csv.sql`, moves the CSV files to the current directory, and changes ownership and permissions on the CSV files.
export_registry_csv.sql | Exports the aircraft registration database to CSV files in the format dump1090's `csv-to-json.py` expects.  The files are created in the database's directory and there is one file per registration agency (e.g. FAA).
faa_registry.csv | FAA aircraft registration database in the format dump1090's `csv-to-json.py` expects.
import_registry_files.sql | Imports CSV formatted aircraft registration databases from the registration agencies (e.g. FAA).

### Resources

* http://www.icao.int/publications/DOC8643/Pages/ManufacturersName.aspx
* http://www.flugzeuginfo.net/table_accodes_en.php?sort=manuasc
* http://www.airframes.org/new.php
