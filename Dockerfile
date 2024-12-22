# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the local Java file into the container
COPY App.java /app

# Set the environment variable for the Java runtime (optional)
ENV JAVA_HOME=/usr/local/openjdk-17

# Compile the Java program
RUN javac App.java

# Command to run the program
CMD ["java", "App"]
