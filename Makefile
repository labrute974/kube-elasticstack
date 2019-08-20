.PHONY: lint deploy-%

export APP_NAME := elasticstack
export COMMIT := $(shell git rev-parse --short HEAD)

lint:
	@helm lint .

%-staging: env := staging
%-production: env := production

deploy-%:
	helm upgrade $(APP_NAME)-$(env) . -i --set "commit=$(COMMIT),environment=$(env)"
