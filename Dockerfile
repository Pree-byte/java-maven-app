FROM openjdk:8-jre-alpine

EXPOSE 8080

COPY ./target/java-maven-app-*.jar /var/jenkins_home/workspace
WORKDIR /var/jenkins_home/workspace

CMD java -jar java-maven-app-*.jar
