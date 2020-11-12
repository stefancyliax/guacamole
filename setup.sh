#!/usr/bin/env sh
echo 'Generating password and environment file'
echo -n "GUACPASSWORD=" > .env
openssl rand -base64 44 >> .env

echo "Creating init script for database"
mkdir init/
docker run --rm guacamole/guacamole /opt/guacamole/bin/initdb.sh --postgres > ./init/initdb.sql