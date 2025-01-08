# Define the changed folders under src
TEMPLATES = $(shell git diff --name-only $$(git merge-base HEAD origin/main) HEAD | grep '^src/' | awk -F'/' '{print $$2}' | sort -u | jq -R -s -c 'split("\n") | map(select(. != ""))')

# Target to compute and send the folders to GitHub Actions output
detect-changes:
	@if [ -z "$(TEMPLATES)" ]; then \
		echo "No templates changed."; \
	else \
		echo 'templates=$(TEMPLATES)' >> $(GITHUB_OUTPUT); \
		echo 'Changed templates : $(TEMPLATES)'; \
	fi

install-dependencies:
	@echo "Installing dependencies..."
	npm install -g @devcontainers/cli