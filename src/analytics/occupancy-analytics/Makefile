.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/occupancy-analytics .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t staynest/occupancy-analytics:latest .

docker-run:
	docker run --rm -p 50321:50321 --env-file .env staynest/occupancy-analytics:latest
