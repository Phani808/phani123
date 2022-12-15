FROM openjdk:8-jre
ADD target/raviLogin-1.0.war raviLogin-1.0.war
EXPOSE 8010
ENTRYPOINT ["java","-war","/raviLogin-1.0.war"]
