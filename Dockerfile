FROM openjdk:8-jre
ADD https://repo1.maven.org/maven2/org/apache/calcite/avatica/avatica-standalone-server/1.8.0/avatica-standalone-server-1.8.0-shaded.jar /root
EXPOSE 8765
CMD ["/usr/lib/jvm/java-8-openjdk-amd64/bin/java", "-jar", "/root/avatica-standalone-server-1.8.0-shaded.jar", "-p", "8765"]
