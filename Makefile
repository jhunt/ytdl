IMAGE ?= filefrog/ytdl:latest

.PHONY: default build push
default: build
build:
	docker build -t $(IMAGE) . \
	  --label org.label-schema.vcs-url="" \
	  --label org.label-schema.vcs-ref="" \

push: build
	docker push $(IMAGE)
