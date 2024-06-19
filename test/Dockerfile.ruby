# Dockerfile for Ruby
FROM alpine:latest

# Install Ruby and other dependencies
RUN apk add --no-cache ruby ruby-dev build-base

# Create a directory for the project
RUN mkdir -p /usr/src/app

# Set the working directory
WORKDIR /usr/src/app

# Make sure Ruby is in the path
ENV PATH="/usr/src/app:${PATH}"

# Copy the application files to the container
COPY . /usr/src/app

# Command to keep container running for debugging
CMD [ "sh" ]

