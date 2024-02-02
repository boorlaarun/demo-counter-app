FROM openjdk:8-jre
WORKDIR /opt/app
ARG jar_file=/target/springboot-{*}.jar
COPY ${jar_file} /opt/app/app.jar
CMD ["java", "-jar", "app.jar"]
