# Build arguments for Ubuntu and Node.js versions
ARG UBUNTU_VERSION=24.04
ARG NODE_VERSION=22.11.0

# Use a specific Ubuntu version as the base image
FROM ubuntu:${UBUNTU_VERSION}

# Set the Node.js version argument
ARG NODE_VERSION

# Install dependencies and the specified Node.js version
RUN apt-get update && apt-get install -y \
    curl \
    software-properties-common make \
    && curl -fsSL https://deb.nodesource.com/setup_${NODE_VERSION%%.*}.x | bash - \
    && apt-get install -y nodejs=${NODE_VERSION}-1nodesource1 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
