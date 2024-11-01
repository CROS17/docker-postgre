.PHONY: help

CMD ?= ''

help: ## This help.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help
nginxversion=1.0.0

setup: ## mysql setup configuration for development in the project
	@make build
	@make up
	@make migrate

build:
	docker-compose up --build
stop: ## Stop the application
	docker-compose down
up: ## Execute the container
	docker-compose up -d
cli_db:  ## Enter to container console from MySQL
	docker exec -it db postgres_db -u root -p