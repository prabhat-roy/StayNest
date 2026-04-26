.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/pricing-engine .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t staynest/pricing-engine:latest .

docker-run:
	docker run --rm -p 50081:50081 --env-file .env staynest/pricing-engine:latest
