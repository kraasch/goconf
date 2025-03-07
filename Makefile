
test:
	go clean -testcache
	go test -v ./...

run:
	go run ./cmd/goconf.go

.PHONY: build
build:
	rm -rf ./build/
	mkdir -p ./build/
	go build \
		-o ./build/goconf \
		-gcflags -m=2 \
		./cmd/ 

