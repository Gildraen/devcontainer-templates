SHELL := /bin/bash

# Build the project
build:
	bin/build.sh $(TEMPLATE)

# Clean up build artifacts
clean:
	echo "Cleaning $(TEMPLATE)..."

# Test the project
test:
	bin/test.sh $(TEMPLATE)

# Default target
all: build test

.PHONY: build clean test all


include ci.mk