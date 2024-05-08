FROM maven:3.8.1-openjdk-11-slim
WORKDIR /app
COPY . /app
CMD ["mvn", "clean", "install"]
