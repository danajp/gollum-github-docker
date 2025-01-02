IMAGE := danajp/gollum-github

GOLLUM_VERSION := 6.0.1
GOLLUM_IMAGE := gollumwiki/gollum:$(GOLLUM_VERSION)

.PHONY: build
build:
	docker build -t $(IMAGE):$(GOLLUM_VERSION) -t $(IMAGE) .

.PHONY: push
push: build
	docker push $(IMAGE):$(GOLLUM_VERSION)

.PHONY: push-latest
push-latest: push
	docker push $(IMAGE)

