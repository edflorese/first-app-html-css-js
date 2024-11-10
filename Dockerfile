# Use an official Node.js runtime as a parent image
FROM node:20-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the HTML file to the container
COPY index.html /usr/src/app/index.html

# Install a simple HTTP server to serve the HTML file
RUN npm install -g http-server

# Expose port 8080 to the outside world
EXPOSE 8080

# Start the HTTP server to serve the HTML file
CMD ["http-server", "-p", "8080"]
