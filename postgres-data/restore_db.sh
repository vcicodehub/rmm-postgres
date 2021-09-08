#!/bin/bash
echo "Restoring database from dump..."
su postgres -c 'psql rmm < /var/lib/postgresql/rmm.db.dat'
echo "Restore complete."
