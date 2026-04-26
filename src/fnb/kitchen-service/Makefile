.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/kitchen-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t staynest/kitchen-service:latest .

docker-run:
	docker run --rm -p 50163:50163 --env-file .env staynest/kitchen-service:latest
