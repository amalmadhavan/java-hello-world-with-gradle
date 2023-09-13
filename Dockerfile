FROM openjdk:17-jdk-slim

EXPOSE 9090

ARG JAR_FILE=build/libs/spring-boot-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar

ENTRYPOINT [ "sh", "-c", "java -Dserver.port=9090 -Dlogging.level.root=INFO -jar app.jar" ]