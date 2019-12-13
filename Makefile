.PHONY: lint deploy-%

export APP_NAME := elasticstack
export COMMIT := $(shell git rev-parse --short HEAD)

lint:
	@helm lint chart/

%-staging: env := staging
%-production: env := production

deploy-%:
	helm upgrade $(APP_NAME)-$(env) chart/ -i --namespace kube-system --set "global.commit=$(COMMIT),global.environment=$(env)"
