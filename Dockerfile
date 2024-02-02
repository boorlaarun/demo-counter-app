FROM openjdk:8-jre
ARG artifact=target/spring-boot-web.jar

WORKDIR /opt/app

COPY ${artifact} app.jar
CMD ["java", "-jar", "app.jar"]
