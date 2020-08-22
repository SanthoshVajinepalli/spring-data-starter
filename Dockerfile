FROM openjdk:11.0.7-jre-slim-buster
EXPOSE 8081
EXPOSE 8082

WORKDIR /app
ARG JAR=target/spring-data-example-1.0.0-SNAPSHOT.jar

COPY $JAR app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
