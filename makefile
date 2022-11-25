SHELL := /bin/bash
VERSION := $(shell git describe --tags --always --dirty)


# Path: makefile
.PHONY: all

# go commands
# =========================================================================

all: build

// go build
build:
	go build -ldflags "-X main.version=$(VERSION)" -o bin/$(NAME) main.go

// go run
run:
	go run main.go

// go test
test:
	go test -v ./...

// go fmt
fmt:
	go fmt ./...