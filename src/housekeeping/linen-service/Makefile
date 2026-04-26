.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/linen-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t staynest/linen-service:latest .

docker-run:
	docker run --rm -p 50142:50142 --env-file .env staynest/linen-service:latest
