FROM gradle:9.4.1-jdk25 AS build
WORKDIR /app
COPY . .
RUN ./gradlew build -x test --no-daemon

FROM eclipse-temurin:25
WORKDIR /app
COPY --from=build /app/build/libs/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]