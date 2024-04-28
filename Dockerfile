# Use a base image with Tomcat pre-installed
FROM tomcat:8.0.20-jre8

# Remove the default Tomcat webapps directory content
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR file to the Tomcat webapps directory
COPY /var/lib/jenkins/workspace/first/target/simplewebapp.war /usr/local/tomcat/webapps/simplewebapp.war

# Expose port 8080 to the outside world
EXPOSE 8082

# Start Tomcat when the container launches
CMD ["catalina.sh", "run"]
