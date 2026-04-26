.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/profile-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t staynest/profile-service:latest .

docker-run:
	docker run --rm -p 50120:50120 --env-file .env staynest/profile-service:latest
