# Avatica Server for MySQL (client 5.1.x)

A Docker image which connects to any MySQL server that
supports the 5.1 client.

## Usage

The below launches the container, listening on 8765 in the container and bound to the local machine.

The user must provide the proper hostname running MySQL and the name of the database to connect to.

```
docker run --rm --expose=8765 -p 8765:8765 -it joshelser/avatica-mysql-server -u 'jdbc:mysql://<mysql_hostname>:3306/<database>' -p 8765
```

## Docker-compose

The MySQL docker image can also be used to automatically create a docker-compose cluster to provide
an Avatica server instance that has no external dependencies.

Users can connect to this instance with the user "user" and the password "password".
