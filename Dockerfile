FROM golang:1.8

WORKDIR /go/src/app
COPY ./go-ecs-ecr .

EXPOSE 8080

CMD ["go", "run", "main.go"]
