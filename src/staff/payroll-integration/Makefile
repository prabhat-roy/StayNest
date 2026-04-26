.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/payroll-integration .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t staynest/payroll-integration:latest .

docker-run:
	docker run --rm -p 50282:50282 --env-file .env staynest/payroll-integration:latest
