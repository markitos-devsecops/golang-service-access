#:[.''.]:>-------------------------------------------
#:[.''.]:> Author:
#:[.''.]:> Marco Antonio Rubio Lopez
#:[.''.]:> markitos.es.info@gmail.com
#:[.''.]:> diciembre 2024
#:[.''.]:>-------------------------------------------
FROM golang:1.23 AS build
LABEL org.opencontainers.image.description="Markitos Golang Access Service API With RBAC and JWT/PASETO Tokens, Register and Login"

WORKDIR /app
COPY . /app
RUN go mod download && CGO_ENABLED=0 go build -o /go/bin/app

FROM gcr.io/distroless/static-debian11:latest-amd64

COPY --from=build /go/bin/app /

ENV SERVICE_PORT 3000

EXPOSE ${SERVICE_PORT}

USER non-root
CMD ["/app"]