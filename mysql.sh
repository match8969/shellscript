#!/bin/sh
echo $1
echo $2
echo $3

# arg
# database name, sqlfile path, start_at
# Example: ./mysql.sh xxx_development ~/xxx.sql '2022-01-01 00:00:00'

mysql -u root -D $1  <<EOF
set @start_at = '$3';
source $2;
EOF
