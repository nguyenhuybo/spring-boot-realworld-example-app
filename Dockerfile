# Use an official OpenJDK 11 runtime as the base image
FROM openjdk:11-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY build/libs/spring-boot-realworld-example-app-0.0.1-SNAPSHOT.jar /app/my-app.jar

# Expose the port your application runs on (replace 8080 with your app's port)
EXPOSE 8080

# Define the command to run the application
CMD ["java", "-jar", "/app/my-app.jar"]
