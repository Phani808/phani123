FROM openjdk:8
EXPOSE 8080
ADD target/raviLogin-1.0.jar raviLogin-1.0.jar
ENTRYPOINT ["java","-jar","/raviLogin-1.0.jar"]