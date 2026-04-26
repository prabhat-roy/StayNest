.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/lost-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t staynest/lost-service:latest .

docker-run:
	docker run --rm -p 50143:50143 --env-file .env staynest/lost-service:latest
