.PHONY: all build run push

run:
	docker run -it sleepyfox/unison-dev:alpha bash

all: build push run

build:
	docker build -t sleepyfox/unison-dev:alpha .

push:
	docker push sleepyfox/unison-dev:alpha
