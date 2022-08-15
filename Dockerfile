FROM openjdk:8-jre-alpine

EXPOSE 8080

COPY ./target/java-maven-app-*.jar /usr/lib
WORKDIR /usr/lib

CMD java -jar java-maven-app-*.jar
