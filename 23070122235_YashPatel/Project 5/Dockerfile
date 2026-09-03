# Multi-stage build for Spring Boot
FROM maven:3.9-eclipse-temurin-17-alpine AS builder
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# Runtime stage
FROM eclipse-temurin:17-jre-alpine
WORKDIR /app

# Run as non-root user
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

COPY --from=builder /app/target/retail-app-1.0.0.jar app.jar
RUN chown -R appuser:appgroup /app

USER appuser
EXPOSE 8080

CMD ["java", "-jar", "app.jar"]
