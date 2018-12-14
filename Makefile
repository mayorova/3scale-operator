.PHONY: build e2e
UNAME := $(shell uname)

ifeq (${UNAME}, Linux)
  SED=sed
else ifeq (${UNAME}, Darwin)
  SED=gsed
endif

Gopkg.lock: Gopkg.toml
	dep check

vendor: Gopkg.lock
	dep ensure -v

NAMESPACE ?= quay.io/3scale/3scale-operator
VERSION ?= v0.0.1
IMAGE ?= $(NAMESPACE):$(VERSION)
TEST_IMAGE ?= $(IMAGE)-test

build:
	operator-sdk build $(NAMESPACE):$(VERSION)

test:
	operator-sdk test local $@

e2e: $(operator-sdk)
	oc delete namespace myproject && oc new-project myproject
	operator-sdk build $(TEST_IMAGE)
	docker push $(TEST_IMAGE)
	cat deploy/operator.orig | sed "s@REPLACE_IMAGE@$(TEST_IMAGE)@g" > deploy/operator.yaml
	operator-sdk test local ./test/e2e --namespace=myproject
