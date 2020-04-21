FROM openjdk:8-jdk-alpine
ARG JAR_FILE=build/libs/*.jar

#RUN addgroup -S java-runner && adduser -S java-demo -G java-runner
#USER java-demo:java-runner

WORKDIR /usr/local/java-demo

COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","app.jar"]
