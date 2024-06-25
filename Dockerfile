# Use an existing base image from Docker Hub
FROM ubuntu:20.04

# Set metadata for the image
LABEL maintainer="Your Name <your.email@example.com>"

# Update package lists and install dependencies
RUN apt-get update && \
    apt-get install -y \
    nginx \
    && rm -rf /var/lib/apt/lists/*

# Copy your application code to the image
COPY index.html /var/www/html/

# Expose the port your app runs on
EXPOSE 80

# Command to run your application
CMD ["nginx", "-g", "daemon off;"]

