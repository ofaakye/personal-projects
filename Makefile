BLUE=\033[0;34m
NC=\033[0m # No Color

lint:
	@echo "\n${BLUE}Lint and Score Maintainability${NC}\n"
	@flake8 . --radon-max-cc 20 && radon mi .
	@echo "\n${BLUE}Bandit Security Audit${NC}\n"
	@bandit -r .
.PHONY: lint
