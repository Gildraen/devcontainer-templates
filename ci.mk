# Variables
CHANGED_FILES=$(shell git diff --name-only $(PREVIOUS_COMMIT) $(CURRENT_COMMIT) | grep -E '(.*/color/|.*/hello/)' | jq -R -s -c 'split("\n") | map(select(. != ""))')

# Define targets
.PHONY: all detect-changes install-dependencies build test

all: detect-changes build test

detect-changes:
	@echo "Detecting changed templates..."
	@echo "::set-output name=templates::$(CHANGED_FILES)"

install-dependencies:
	@echo "Installing dependencies..."
	sudo apt-get update && sudo apt-get install -y make jq
