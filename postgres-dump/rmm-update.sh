#!/bin/bash
su postgres -c 'psql rmm_vendors -f /var/lib/postgresql/rmm-vendors-update-script.sql'