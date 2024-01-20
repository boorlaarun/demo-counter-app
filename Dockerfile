FROM tomcat:8.5

#COPY
COPY ./var/lib/jenkins/workspace/sai/.jar /usr/local/tomcat/webapps/

WORKDIR /usr/local/tomcat/webapps/

CMD ["catalina.sh", "run"]
