#!/bin/sh

###########################
# INCLUDE VARIABLES 
###########################
. info.txt

now=$(date "+%Y%m%d%H%M")
folder=~/backups/
filename="db_backup_$now.sql"
path="$folder$filename"

mysqldump -h $endpoint -P $port -u $db_user --password=$db_pass $db_name > $path 
