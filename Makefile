# Basic Makefile for devcontainer template development and testing

# Variables
PROJECT_NAME = devcontainer-template

# Build the project
build:
	bin/build.sh color

# Run the project
run:
	# Add your run commands here
	echo "Running $(PROJECT_NAME)..."

# Stop the project
stop:
	# Add your stop commands here
	echo "Stopping $(PROJECT_NAME)..."

# Clean up build artifacts
clean:
	# Add your clean commands here
	echo "Cleaning $(PROJECT_NAME)..."

# Test the project
test:
	bin/test.sh color


# Default target
all: build run test

.PHONY: build run stop clean test all


include ci.mk