# syntax=docker/dockerfile:1

FROM eclipse-temurin:17-jdk-jammy

WORKDIR /EShopApp

COPY .mvn/ .mvn
COPY mvnw pom.xml ./
COPY src ./src
chmod +x mvnw

CMD ["./mvnw", "spring-boot:run"]
