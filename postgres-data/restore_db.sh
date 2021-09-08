#!/bin/bash
echo "Restoring database from dump..."
su postgres -c 'cd ~'
su postgres -c 'whoami'
su postgres -c 'psql rmm < /var/lib/postgresql/data/rmm.db.dat'
echo "Restore complete."
