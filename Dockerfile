FROM golang:1.17.2
RUN GOCACHE=OFF
ENV GO111MODULE=on \
    CGO_ENABLED=0 \
    GOOS=linux \
    GOARCH=amd64
WORKDIR /app
COPY . .
RUN go build -o main ./app/*.go
CMD ["./main"]