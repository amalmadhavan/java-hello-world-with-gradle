FROM openjdk:11

EXPOSE 8000

ARG JAR_FILE=build/libs/jb-hello-world-0.1.0.jar
COPY ${JAR_FILE} app.jar

ENTRYPOINT [ "sh", "-c", "java -Dserver.port=8000 -Dlogging.level.root=INFO -jar app.jar" ]
