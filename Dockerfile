FROM amazoncorretto:11-alpine-jdk 
MAINTAINER JV 
COPY target/jv-0.0.1-SNAPSHOT.jar jv-app.jar
ENTRYPOINT  ["java", "-jar", "jv-app.jar"]