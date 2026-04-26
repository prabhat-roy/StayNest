.PHONY: build test run lint tidy docker-build docker-run

build:
	go build -o bin/guest-bff .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t staynest/guest-bff:latest .

docker-run:
	docker run --rm -p 50001:50001 --env-file .env staynest/guest-bff:latest
