# syntax=docker/dockerfile:1

FROM eclipse-temurin:17-jdk-jammy

WORKDIR /EShopApp

COPY .mvn/ .mvn
COPY mvn pom.xml ./
COPY src ./src

RUN ./mvn dependency:resolve

CMD ["./mvn", "spring-boot:run"]
