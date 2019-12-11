FROM openjdk:8-jdk-alpine as build
WORKDIR /workspace/app

COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .
COPY src src

RUN ./mvnw install -DskipTests

FROM openjdk:8-jdk-alpine
VOLUME /tmp

ARG DEPENDENCY=/workspace/app/target
ARG APP_NAME=vijnana-ragnax-eureka-1.0.0.jar

COPY --from=build ${DEPENDENCY}/${APP_NAME} /app/vijnana-ragnax-eureka.jar

ENTRYPOINT ["java","-jar","/app/vijnana-ragnax-eureka.jar"]