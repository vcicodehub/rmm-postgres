#!/bin/bash
echo "Creating rmm databases..."
su postgres -c 'createdb rmm_orders'
su postgres -c 'createdb rmm_users'
su postgres -c 'createdb rmm_shops'
su postgres -c 'createdb rmm_vendors'
su postgres -c 'createdb rmm_events'
echo "Restoring rmm databases from dump files..."
su postgres -c 'psql rmm_orders < /var/lib/postgresql/rmm_orders.db.dat'
su postgres -c 'psql rmm_users < /var/lib/postgresql/rmm_users.db.dat'
su postgres -c 'psql rmm_shops < /var/lib/postgresql/rmm_shops.db.dat'
su postgres -c 'psql rmm_vendors < /var/lib/postgresql/rmm_vendors.db.dat'
su postgres -c 'psql rmm_events < /var/lib/postgresql/rmm_events.db.dat'
echo "Restore complete."
