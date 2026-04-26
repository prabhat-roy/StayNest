.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/attendance-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t staynest/attendance-service:latest .

docker-run:
	docker run --rm -p 50281:50281 --env-file .env staynest/attendance-service:latest
