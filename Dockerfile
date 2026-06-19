FROM golang:alpine

RUN apk add --no-cache git

RUN go install github.com/simulot/immich-go@latest

WORKDIR /imports

ENTRYPOINT ["/go/bin/immich-go"]