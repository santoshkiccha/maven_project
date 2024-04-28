# Use a base image with Tomcat pre-installed
FROM tomcat:8.0.20-jre8

# Remove the default Tomcat webapps directory content
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR file to the Tomcat webapps directory
COPY target/simplewebapp-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/simplewebapp.war

EXPOSE 8001

# Start Tomcat when the container launches
CMD ["catalina.sh", "run"]
