FROM openjdk:8-jre
RUN mkdir -p /root/classpath

# Jars
ADD https://repository.apache.org/content/repositories/snapshots/org/apache/calcite/avatica/avatica-standalone-server/1.10.0-SNAPSHOT/avatica-standalone-server-1.10.0-20170324.033424-109-shaded.jar /root/classpath/
ADD https://repo1.maven.org/maven2/mysql/mysql-connector-java/5.1.41/mysql-connector-java-5.1.41.jar /root/classpath/

ENTRYPOINT ["/usr/lib/jvm/java-8-openjdk-amd64/bin/java", "-cp", "/root/classpath/*", "org.apache.calcite.avatica.standalone.StandaloneServer"]
