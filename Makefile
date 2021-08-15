.PHONY: build-x86 build-arm64 push all login

# Build Vars
VERSION=0.1
TAG1=registry.ford.com/den-org/netshoot:${VERSION}
TAG1=registry.ford.com/den-org/netshoot:latest


.DEFAULT_GOAL := build

build:
	    @docker build --platform linux/amd64 -t ${TAG1} -t ${TAG2} .
build-arm64:
		@docker build --platform linux/arm64 -t ${TAG1} .
build-all:
		@docker buildx build --platform linux/amd64,linux/arm64 --output "type=image,push=false" --file ./Dockerfile .

push:
	 	docker push ${TAG1}

login:
        @docker run -it ${TAG1} bash

all: build-all push


		
