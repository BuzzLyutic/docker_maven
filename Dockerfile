FROM openjdk:8-jdk-alpine
WORKDIR /app
COPY . /app
EXPOSE 8080
CMD ["java", "-jar", "target/docker_maven-1.0-SNAPSHOT.jar"]
