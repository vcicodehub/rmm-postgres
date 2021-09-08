#!/bin/bash
echo "Creating rmm database..."
su postgres -c 'createdb rmm'
echo "Restoring rmm database from dump..."
su postgres -c 'psql rmm < /var/lib/postgresql/rmm.db.dat'
echo "Restore complete."
