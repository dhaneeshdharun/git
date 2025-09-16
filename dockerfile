FROM tomcat:latest
WORKDIR /usr/local/tomcat/webapps/
RUN rm -rf *
COPY target/my-webapp.war *
EXPOSE 8080
CMD [ "catalina.sh", "run" ]