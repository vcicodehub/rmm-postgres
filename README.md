# Docker Readme File

## PostgreSQL database dump
```
Connect to PostgreSQL within Docker
> su postgres
> cd ~
> pg_dump rmm > rmm.db.dat
> cp rmm.db.dat /var/lib/postgresql
Database dump is now in your local volume <project_dir>/postgres-data
```

## PostgreSQL database dump restore
```
Connect to PostgreSQL within Docker
> su postgres
> cd ~
> psql rmm < /var/lib/postgresql/rmm.db.dat
Database dump is now in your local volume <project_dir>/postgres-data
```

## Initialize Database
```
> docker-compose up -d
verify the db is running...
> docker exec rmm-postgres-main_buckeyes_1 /var/lib/postgresql/data/restore_db.sh
```

## Start Database
```
> docker-compose up -d
```

## Stop Database
```
> docker-compose down
```