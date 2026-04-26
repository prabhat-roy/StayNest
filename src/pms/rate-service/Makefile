.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/rate-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t staynest/rate-service:latest .

docker-run:
	docker run --rm -p 50041:50041 --env-file .env staynest/rate-service:latest
