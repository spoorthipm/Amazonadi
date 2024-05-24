
FROM ubuntu:20.04
RUN apt-get update && apt-get install -y openjdk-17-jdk
COPY Amazon.war .
EXPOSE 8080
CMD ["java", "-jar", "Amazon.war"]
