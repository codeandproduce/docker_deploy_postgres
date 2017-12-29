#Postgres Database Set-Up Using Docker & db-migrate

This is a repository that I will refer to later when I need to deploy a postgreSQL database in a remote server.

1. docker-deploy/ folder contains the bash scripts necessary to not only deploy the bash scripts to the remote server but also scripts that will deploy the postgres server in the remote server.

	-Just keep in mind you need to create your own env.list file containing all of the environment variables necessary.
	Example:
	
	```
	POSTGRES_PASSWORD=
	POSTGRES_USER=
	PGDATA=
	```
	
	-I refer to the remote server as root@ubunutu-cwkeam, in other uses a specific IP address should replace 'ubunutu-cwkeam' or create a reference in the local machine to the remote server (what I did).

2. db-migrate provides a framework for a highly maintainable database. The documentation is below.
	-It requires a database.json files that specifies the database configurations. The format is like the following:

```
{
  "dev": {
    "driver": "..",
    "user": "(POSTGRES USER)"
    "host": "(IP ADDRESS)",
    "database": "DB NAME",
    "schema": ""
    "password": "(POSTGRES PASSWORD)"
}
```

### Docs
https://db-migrate.readthedocs.io/en/latest/Getting%20Started/configuration/


### Installation

```
npm i -g db-migrate

npm i
```


### Configuration
You will need need a database.json in the root directory, containing the database credentials.


### Usage

```
db-migrate create migration-name --sql-file

db-migrate up -e dev

db-migrate down -e dev
```
