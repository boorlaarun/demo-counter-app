FROM openjdk:8-jre
WORKDIR /opt/app
//ARG jar_file=/var/lib/jenkins/workspace/maven-pipeline/target/springboot-1.0.1.jar
COPY /var/lib/jenkins/workspace/maven-pipeline/target/springboot-1.0.1.jar /opt/app/app.jar
CMD ["java", "-jar", "app.jar"]
