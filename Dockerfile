#file used to containerize the application

# Using Java 11 image
FROM adoptopenjdk/openjdk11:alpine-jre

# Refer war file created for project
ARG JAR_FILE=target/springdocker-1.jar

#Create Home Directory
WORKDIR /opt/app

#copy jar file to app folder /opt/app/app.jar
COPY ${JAR_FILE} app.jar

#EXPOSE PORT
EXPOSE 8080

#Run the app with CMD
ENTRYPOINT ["java","-jar","app.jar"]
#ENTRYPOINT ["java","-jar","app.jar"]




