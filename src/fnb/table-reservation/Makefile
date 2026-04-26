.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/table-reservation .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t staynest/table-reservation:latest .

docker-run:
	docker run --rm -p 50162:50162 --env-file .env staynest/table-reservation:latest
