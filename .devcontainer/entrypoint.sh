#!/bin/sh

go install github.com/air-verse/air@v1.62.0

wget -O- -nv https://raw.githubusercontent.com/golangci/golangci-lint/HEAD/install.sh | sh -s -- -b $(go env GOPATH)/bin v2.1.6
cp ~/go/bin/golangci-lint ~/go/bin/golangci-lint-v2

tail -f /dev/null
