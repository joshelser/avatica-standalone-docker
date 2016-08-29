FROM openjdk:8-jre
ADD https://repo1.maven.org/maven2/com/github/joshelser/legacy-avatica-1.6.0-hsqldb-server/0.0.1/legacy-avatica-1.6.0-hsqldb-server-0.0.1-shaded.jar /root
EXPOSE 8765
CMD ["/usr/lib/jvm/java-8-openjdk-amd64/bin/java", "-jar", "/root/legacy-avatica-1.6.0-hsqldb-server-0.0.1-shaded.jar", "-p", "8765"]
