FROM eclipse-temurin:21-jre-alpine

WORKDIR /opt/lavalink

# Install curl
RUN apk add --no-cache curl

# Download Lavalink v4.2.2 jar
RUN curl -L -o Lavalink.jar https://github.com/lavalink-devs/Lavalink/releases/download/4.2.2/Lavalink.jar

# Copy configuration
COPY application.yml application.yml

EXPOSE 2333

# Start with Render dynamic PORT and low-memory tuning for Render Free Tier (512MB RAM)
CMD ["sh", "-c", "java -Xmx400m -Xms200m -XX:+UseG1GC -jar Lavalink.jar"]
