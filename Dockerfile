FROM maven:3.8.1-openjdk-11-slim AS build
WORKDIR /app
COPY . .
RUN mvn clean package

FROM openjdk:11-jre-slim
WORKDIR /app
COPY --from=build /app/target/docker_maven-1.0-SNAPSHOT.jar /app/app.jar
CMD ["java", "-jar", "/app/app.jar"]
