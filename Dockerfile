FROM openjdk:17-jdk-slim

EXPOSE 8080

ARG JAR_FILE=build/libs/spring-boot-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar

ENTRYPOINT [ "sh", "-c", "java -Dserver.port=8080 -Dlogging.level.root=INFO -jar app.jar" ]
