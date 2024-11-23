# Start from the latest Ubuntu image
FROM ubuntu:latest

# Install wget and tar
RUN apt-get update && apt-get install -y wget tar

# Set working directory
WORKDIR /app

# Copy the start.sh script into the container
COPY start.sh /app/start.sh

# Make the start.sh script executable
RUN chmod +x /app/start.sh

# Define the entrypoint
ENTRYPOINT ["/bin/bash", "-c", "/app/start.sh"]
