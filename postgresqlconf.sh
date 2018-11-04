#!/bin/bash
set -e
CONF_FILE=/data/postgres/postgresql.conf
#CONF_FILE=~/postgresql.conf.default
sed -ri "s/#log_statement = 'none'/log_statement = 'all'/g" $CONF_FILE
sed -ri "s/#log_destination = 'stderr'/log_destination = 'stderr'/g" $CONF_FILE
sed -ri "s/#logging_collector = off/logging_collector = on/g" $CONF_FILE
sed -ri "s/#log_directory = 'pg_log'/log_directory = 'pg_log'/g" $CONF_FILE
sed -ri "s/#log_min_duration_statement = -1/log_min_duration_statement = 1200/g" $CONF_FILE
sed -ri "s/#log_filename = 'postgresql-%Y-%m-%d_%H%M%S.log'/log_filename = 'postgresql.log'/g" $CONF_FILE
sed -ri "s/#log_file_mode = 0600/log_file_mode = 0777/g" $CONF_FILE
sed -ri "s/#log_rotation_age = 1d/log_rotation_age = 1d/g" $CONF_FILE
sed -ri "s/#log_temp_files = -1/log_temp_files = 500/g" $CONF_FILE
