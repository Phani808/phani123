FROM maven as build
WORKDIR /var/lib/jenkins/workspace/DOCKER/target
COPY . .
RUN mvn install

FROM openjdk:11.0
WORKDIR /app
COPY --from=build /var/lib/jenkins/workspace/DOCKER/target/raviLogin-1.0.jar /app/
EXPOSE 8080
CMD ["java","-jar","raviLogin-1.0.jar"]