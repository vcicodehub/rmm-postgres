#!/bin/bash
su postgres -c 'psql rmm_users -f /var/lib/postgresql/rmm-users-update-script.sql'