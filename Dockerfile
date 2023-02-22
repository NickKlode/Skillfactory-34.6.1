FROM golang:alpine

RUN mkdir /test
COPY main.go /test
WORKDIR /test
RUN go build -o /test/main main.go
ENTRYPOINT ["/test/main"]