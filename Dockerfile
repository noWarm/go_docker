FROM golang:latest
RUN mkdir /build
WORKDIR /build

RUN export GO111MODULE=on
RUN go mod download
RUN go build -o main ./...
CMD ["/app/main"]