.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/contract-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t staynest/contract-service:latest .

docker-run:
	docker run --rm -p 50203:50203 --env-file .env staynest/contract-service:latest
