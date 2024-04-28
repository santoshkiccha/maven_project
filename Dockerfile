# Start with a base image containing Java runtime
FROM tomcat:8.0.20-jre8
# Copy the WAR file to the Tomcat webapps directory
COPY simplewebapp-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/

# Expose port 8080 to the outside world
EXPOSE 8080

# Run the Tomcat server
CMD ["catalina.sh", "run"]
