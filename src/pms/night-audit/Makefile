.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/night-audit .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t staynest/night-audit:latest .

docker-run:
	docker run --rm -p 50043:50043 --env-file .env staynest/night-audit:latest
