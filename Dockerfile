# syntax=docker/dockerfile:1

FROM eclipse-temurin:17-jdk-jammy

WORKDIR /EShopApp

COPY .mvn/ .mvn
COPY mvnw pom.xml ./

RUN .mvnw -o

COPY src ./src

CMD ["./mvnw", "spring-boot:run"]
