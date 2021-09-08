# Docker Readme File

## PostgreSQL database dump
```
Connect to PostgreSQL within Docker
> su postgres
> cd ~
> pg_dump rmm > rmm.db.dat
> cp rmm.db.dat /var/lib/postgresql/data
Database dump is now in your local volume <project_dir>/postgres-data
```

## PostgreSQL database dump restore
```
Connect to PostgreSQL within Docker
> su postgres
> cd ~
> psql rmm < /var/lib/postgresql/data/rmm.db.dat
Database dump is now in your local volume <project_dir>/postgres-data
```

## Run Commands 
```
> docker-compose up -d
verify the db is running...
> docker exec rmm-postgres_buckeyes_1 /var/lib/postgresql/data/restore_db.sh
```