FROM openjdk:8-jre
ADD target/raviLogin-1.0.war app.war
EXPOSE 8010
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.war"]