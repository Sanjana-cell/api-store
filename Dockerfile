FROM golang:latest
WORKDIR /store
COPY . .
RUN go mod download && \
    go build -o kvstore
EXPOSE 8080
ENTRYPOINT ["./kvstore"]