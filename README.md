# Avatica Standalone Docker Images

A set of Docker images which will start an Apache Avatica instance using
[HyperSQL](http://hsqldb.org/) (HSQLDB). The HSQLDB instance is created using
[scott-data-hsqldb](https://github.com/julianhyde/scott-data-hsqldb), and has
a username and password of "SCOTT" and "TIGER", respectively.

## Usage

First, pull the Docker image to your local machine.

```
$ docker pull joshelser/avatica-hsqldb:<version>
```

Next, run the image, providing the local port you want to expose the
Avatica server on:

```
$ docker run -p 9999:8765 joshelser/avatica-hsqldb
````

For simple testing, you can provide the same port that the Avatica
server is actually listening on in the Docker container:

```
$ docker run -p 8765:8765 joshelser/avatica-hsqldb
```

While the port `8765` is exposed by the image, you *must* provide a
mapping of that port to your local machine. After starting the container,
you can verify that it is reachable using telnet:

```
$ telnet localhost 9999
Trying ::1...
Connected to localhost.
Escape character is '^]'.
^D

HTTP/1.1 400 Illegal character 0x4
Content-Length: 0
Connection: close
Server: Jetty(9.2.z-SNAPSHOT)

Connection closed by foreign host.
```

## Multiple versions of Avatica

There are multiple versions of this Docker image available which correspond
to the version of Avatica being used.

* 1.9.0 (latest)
* 1.8.0
* 1.7.1
* 1.7.0
* 1.6.0

To use a specific version, reference the tag in the Docker image name:

```
$ docker run -p 8765:8765 joshelser/avatica-hsqldb:1.7.1
```

## Disclaimer

Apache Avatica is a trademark of the [Apache Software Foundation](https://www.apache.org/).
