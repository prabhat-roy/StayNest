.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/payment-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t staynest/payment-service:latest .

docker-run:
	docker run --rm -p 50241:50241 --env-file .env staynest/payment-service:latest
