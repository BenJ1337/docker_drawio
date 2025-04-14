FROM tomcat:9.0.86-jre11-temurin-jammy

# Set working directory to Tomcat webapps
WORKDIR /usr/local/tomcat/webapps

# Copy the Draw.io WAR file into Tomcat
COPY draw.war ./ROOT.war

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
