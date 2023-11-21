#FROM tomcat:latest
#RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
#COPY ./*.war /usr/local/tomcat/webapps
#COPY /home/ubuntu/workspace/register-app-ci/webapp/target/webapp.war /usr/local/tomcat/webapps
FROM tomcat:8.0-alpine
ADD sample.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
