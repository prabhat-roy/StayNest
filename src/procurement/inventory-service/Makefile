.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/inventory-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t staynest/inventory-service:latest .

docker-run:
	docker run --rm -p 50260:50260 --env-file .env staynest/inventory-service:latest
