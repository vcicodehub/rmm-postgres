#!/bin/bash
echo "Restoring rmm databases from dump files..."
su postgres -c 'psql rmm_orders -f /var/lib/postgresql/rmm_orders.db.dat'
su postgres -c 'psql rmm_users -f /var/lib/postgresql/rmm_users.db.dat'
su postgres -c 'psql rmm_shops -f /var/lib/postgresql/rmm_shops.db.dat'
su postgres -c 'psql rmm_vendors -f /var/lib/postgresql/rmm_vendors.db.dat'
su postgres -c 'psql rmm_events -f /var/lib/postgresql/rmm_events.db.dat'
echo "Restore complete."
