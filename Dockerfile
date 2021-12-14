FROM golang:1.17-alpine

RUN apk --no-cache add make gcc g++

WORKDIR /app

COPY go.mod .
COPY go.sum .
RUN go mod download

COPY . ./

RUN go build -o /golang-app

CMD [ "/golang-app" ]
