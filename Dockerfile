FROM openjdk:8
WORKDIR /app
COPY . /app
RUN javac raviLogin-1.0.jar
CMD ["java" , "raviLogin-1.0.jar"]