FROM openjdk:8
ADD target/raviLogin-1.0.jar raviLogin-1.0.jar
EXPOSE 8080
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/raviLogin-1.0.jar"]