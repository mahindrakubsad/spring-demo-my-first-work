#FROM java:8-jdk-alpine
FROM openjdk:8-jdk-alpine
#FROM maven:3.5-jdk-8
WORKDIR /usr/src/app
COPY ./target/spring-boot-web-0.0.2-SNAPSHOT.jar /usr/src/app/spring-boot-web-0.0.2-SNAPSHOT.jar 

RUN chmod -R 777 /usr/src/app/spring-boot-web-0.0.2-SNAPSHOT.jar 
ENTRYPOINT ["java", "-jar", "spring-boot-web-0.0.2-SNAPSHOT.jar"]
