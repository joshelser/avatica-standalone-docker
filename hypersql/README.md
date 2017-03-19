# Apache Avatica server for the HyperSQL database

A Docker image which starts an in-memory HSQLDB instance with
an Avatica server. HSQLDB is initialized using the "Scott" data set
via https://github.com/julianhyde/scott-data-hsqldb/.

## Usage

Change `8765` to the desired port the Avatica server will be bound to on the host system

```
docker run --rm --expose=8765 -p 8765:8765 -it joshelser/avatica-hsqldb-server -p 8765
```
