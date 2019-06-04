FROM golang:1.12.5-stretch
WORKDIR /go/src/github.com/unasuke/dengon
ENV GO111MODULE=on

COPY go.mod go.sum main.go ./
RUN go get \
  && go build

COPY . .
