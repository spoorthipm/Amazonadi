# Use an official Tomcat runtime as the base image
FROM tomcat:latest

# Remove the default ROOT application
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your WAR file into the webapps directory of Tomcat
COPY /var/lib/jenkins/workspace/sush/Amazon-Web/target/Amazon.war /usr/local/tomcat/webapps/

# Optionally, expose the default Tomcat port (8080) if needed
EXPOSE 8080
