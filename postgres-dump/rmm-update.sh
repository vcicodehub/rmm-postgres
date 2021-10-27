#!/bin/bash
su postgres -c 'psql rmm_vendors -f /var/lib/postgresql/rmm-vendors-update-02-script.sql'
su postgres -c 'psql rmm_orders -f /var/lib/postgresql/rmm-orders-update-script.sql'