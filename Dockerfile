FROM eclipse-temurin:21-jdk
VOLUME /tmp
WORKDIR /app
COPY target/*.jar app.jar
LABEL authors="sanskrutidagade"

#Expose port inside container
EXPOSE 8080

#Run the app
ENTRYPOINT ["java", "-jar", "app.jar"]