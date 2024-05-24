# Use an official Tomcat runtime as the base image
FROM tomcat:latest

# Remove the default ROOT application
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Debug: List contents of the webapps directory
RUN ls -lR /usr/local/tomcat/webapps/

# Copy all WAR files from the target directory into the webapps directory of Tomcat
COPY /home/azureuser/Amazonadi/Amazon-Web/target/*.war /usr/local/tomcat/webapps/

# Optionally, expose the default Tomcat port (8080) if needed
EXPOSE 8080
