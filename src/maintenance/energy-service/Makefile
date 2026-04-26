.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/energy-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t staynest/energy-service:latest .

docker-run:
	docker run --rm -p 50303:50303 --env-file .env staynest/energy-service:latest
