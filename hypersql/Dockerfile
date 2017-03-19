FROM openjdk:8-jre
RUN mkdir -p /root/classpath

# Jars
ADD https://repository.apache.org/content/repositories/snapshots/org/apache/calcite/avatica/avatica-standalone-server/1.10.0-SNAPSHOT/avatica-standalone-server-1.10.0-20170319.202657-105-shaded.jar /root/classpath/
ADD https://repo1.maven.org/maven2/net/hydromatic/scott-data-hsqldb/0.1/scott-data-hsqldb-0.1.jar /root/classpath/
ADD https://repo1.maven.org/maven2/org/hsqldb/hsqldb/2.3.1/hsqldb-2.3.1.jar /root/classpath/

ENTRYPOINT ["/usr/lib/jvm/java-8-openjdk-amd64/bin/java", "-cp", "/root/classpath/*", "org.apache.calcite.avatica.server.StandaloneServer", "-u", "jdbc:hsqldb:res:scott"]
