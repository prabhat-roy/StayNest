.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/tier-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t staynest/tier-service:latest .

docker-run:
	docker run --rm -p 50220:50220 --env-file .env staynest/tier-service:latest
