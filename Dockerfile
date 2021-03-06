#FROM tomcat:8.5.47-jdk8-openjdk
FROM tomcat:8.5.16-jre8-alpine
MAINTAINER "Ashu"

# It is just kind of documentation which tell image user that application internally runs on port 8080. It does not mean that it publishes the port
EXPOSE 8080
  
# delete all application inside webapp of tomcat 
RUN rm -rf /usr/local/tomcat/webapps/*
COPY ./target/TestHelloWar-0.0.1-SNAPSHOT.war    /usr/local/tomcat/webapps/ROOT.war 
CMD ["catalina.sh", "run"]