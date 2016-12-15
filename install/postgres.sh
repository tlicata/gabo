#!/usr/bin/env bash

# Install Postgres.
sudo apt-get --yes install postgresql postgresql-contrib libpq-dev

# Create a user named `ubuntu`.
# To figure out if user already exists I followed:
# http://stackoverflow.com/questions/8546759/how-to-check-if-a-postgres-user-exists
ROLE_EXISTS=$(sudo -i -u postgres psql -tAc "SELECT 1 FROM pg_roles WHERE rolname='ubuntu'")
if [ -z "$ROLE_EXISTS" ]; then
    sudo --user postgres createuser --superuser ubuntu
fi
