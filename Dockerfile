# Use an official Tomcat runtime as the base image
FROM tomcat:latest

# Remove the default ROOT application
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your WAR file(s) into the webapps directory of Tomcat
COPY target/**/*.war /usr/local/tomcat/webapps/

# Optionally, expose the default Tomcat port (8080) if needed
EXPOSE 8080

# Optionally, you can specify the startup command for Tomcat
CMD ["catalina.sh", "run"]
