IMAGE_NAME ?= shiwano/migrate
TAG ?= latest

build:
	docker build -t $(IMAGE_NAME):$(TAG) .

push: build
	docker push $(IMAGE_NAME):$(TAG)

.PHONY: build push
