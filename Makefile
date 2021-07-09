.PHONY: default
default: help


USER_ID=$(shell id -u)
GROUP_ID=$(shell id -g)


## Validates OpenAPI specification
validate:
	docker run --rm \
		-v ${PWD}:/local \
		-u ${USER_ID}:${GROUP_ID} \
		openapitools/openapi-generator-cli:v5.2.0 validate \
		-i /local/api/openapi.yaml \
		--recommend


## Generate golang client for Bitbucket Server Insights API
generate:
	docker run --rm \
		-v ${PWD}:/local \
		-u ${USER_ID}:${GROUP_ID} \
		openapitools/openapi-generator-cli:v5.2.0 generate \
		-g go \
		-i /local/api/openapi.yaml \
		-o /local \
		-c /local/api/config.json \
		--git-user-id reva2 \
		--git-repo-id bitbucket-insights-api


## This help screen
help:
	$(info Available targets)
	@awk '/^[a-zA-Z\-\_0-9\.]+:/ { \
		helpMessage = match(lastLine, /^## (.*)/); \
		if (helpMessage) { \
			helpCommand = substr($$1, 0, index($$1, ":")-1); \
			helpMessage = substr(lastLine, RSTART + 3, RLENGTH); \
			printf "\033[1;32m %-20s \033[0m %s\n", helpCommand, helpMessage; \
		} \
	} \
	{ lastLine = $$0 }' $(MAKEFILE_LIST)