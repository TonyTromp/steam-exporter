FROM golang:1.19

WORKDIR /app
COPY go.mod go.sum owned_games.go server.go /app

RUN go build

ENTRYPOINT [ "./steam-exporter" ]