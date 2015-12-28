#!/bin/sh

#Configurable Vars
routeDradis="ExampleDradisRoute"
backupDBName="BackupName"

#Vars
DB=$routeDradis"/lib/app/db/production.sqlite3"
DBBk=$routeDradis"/lib/app/db/"$backupDBName
Boot=$routeDradis"/dradis-webapp"

#Backup
echo "Making database backup on "$routeDradis"/lib/app/db/"$backupDBName
cp $DB $DBBk

#Boot
echo "booting Dradis on background"
$Boot &

echo "Done"
