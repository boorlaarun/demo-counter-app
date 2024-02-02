FROM openjdk:8-jre
ARG artifact=target/springboot-1.0.1.jar

WORKDIR /opt/app

COPY ${artifact} app.jar
CMD ["java", "-jar", "app.jar"]
