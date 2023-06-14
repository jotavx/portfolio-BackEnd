
# Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
# Click nbfs://nbhost/SystemFileSystem/Templates/Other/Dockerfile to edit this template

FROM amazoncorretto:8-alpine-jdk
MAINTAINER JV
COPY target/jv-0.0.1-SNAPSHOT jv-0.0.1-SNAPSHOT
ENTRYPOINT ["java","-jar","/jv-0.0.1-SNAPSHOT"]