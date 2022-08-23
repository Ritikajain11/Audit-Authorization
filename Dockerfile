FROM openjdk:11
VOLUME /tmp
EXPOSE 8100
ADD target/MFPE-AuthorizationMS-JAR.jar MFPE-AuthorizationMS-JAR.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /MFPE-AuthorizationMS-JAR.jar" ]
