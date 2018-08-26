#!/bin/sh

###########################
# INCLUDE VARIABLES
###########################
. info.txt

###########################
# VARIABLES
###########################
mysqlcli="/usr/local/bin/mysql"
catcmd="/bin/cat"

###########################
# COMMANDS
###########################
$mysqlcli -h $endpoint -u $adminusername -P $port -p -e \
"DROP DATABASE IF EXISTS $db_name;\
CREATE DATABASE $db_name;\
DROP USER IF EXISTS $db_user;\
CREATE USER $db_user IDENTIFIED BY '$db_pass';\
GRANT ALL PRIVILEGES ON $db_name.* TO $db_user;\
FLUSH PRIVILEGES;"
