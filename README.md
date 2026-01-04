# Spring Boot Docker Demo

A minimal Spring Boot application containerized using Docker.  
This project is intentionally simple — the primary goal is to demonstrate
**Dockerizing a Spring Boot application**, not building business logic.

---

## Tech Stack
- Java 21
- Spring Boot
- Maven
- Docker

---

## Application Overview
- Exposes a single REST endpoint:


---
GET /hello:

Returns: `hello`

---

## Build the Application
Package the Spring Boot application:

```bash
mvn clean package -DskipTests

```
## Build Docker image
Create the Docker image:
docker build -t spring-boot-docker-demo .

## Run Docker container
docker run -p 9090:8080 spring-boot-docker-demo

## Test the application
http://localhost:9090/hello

Notes:
The application runs on port 8080 inside the container.
Port 9090 is used on the host machine.
