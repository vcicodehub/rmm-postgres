# Docker Readme File

## Initialize Database
```
> docker-compose up -d
verify the db is running...
> docker exec rmm-postgres-main_buckeyes_1 /var/lib/postgresql/restore_db.sh
```

## Start Database
```
> docker-compose up -d
```

## Stop Database
```
> docker-compose down
```

## Database Dump/Restore
These commands are here for reference only...
```
Connect to PostgreSQL within Docker
> su postgres
> cd ~
> pg_dump rmm > rmm.db.dat
> cp rmm.db.dat /var/lib/postgresql
Database dump is now in your local volume <project_dir>/postgres-data
```
```
Connect to PostgreSQL within Docker
> su postgres
> cd ~
> psql rmm < /var/lib/postgresql/rmm.db.dat
Database dump is now in your local volume <project_dir>/postgres-data
```