.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/guest-analytics .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t staynest/guest-analytics:latest .

docker-run:
	docker run --rm -p 50322:50322 --env-file .env staynest/guest-analytics:latest
