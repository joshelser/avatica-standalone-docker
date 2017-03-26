# Avatica Server for PostgreSQL (client 42.0.1 jre7)

A Docker image which connects to any PostgreSQL database
which supports the 42.0.1 client.

## Usage

The below launches the container, listening on 8765 in the container and bound to the local machine.

The user must provide the proper hostname running PostgreSQL and the name of the database to connect to.

```
docker run --rm --expose=8765 -p 8765:8765 -it joshelser/avatica-postgresql-server -u 'jdbc:postgresql://<postgres>:5432/<database>' -p 8765
```

## Docker-compose

A docker-compose.yml file is also provided which uses the PostgreSQL docker image.

Users can directly connect to the Avatica server with the username 'user', and password 'password'.
