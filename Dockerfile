FROM openjdk:11
VOLUME /tmp
EXPOSE 8100
ADD target/Audit-Authorization.jar Audit-Authorization.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /Audit-Authorization.jar" ]
