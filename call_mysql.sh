#!/bin/sh

SHELL_EXEC=./mysql.sh
DB_NAME=xxxx_development

CSV_FILE=./data/start_at.csv
SQL_FILE=/Users/user_name/Desktop/xxxx.sql


while read -r row; do
  start_at=`echo ${row} | cut -d , -f 1`

  ${SHELL_EXEC} ${DB_NAME} ${SQL_FILE} ${start_at}

done < ${CSV_FILE}

