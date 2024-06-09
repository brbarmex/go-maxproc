FROM golang:1.20 AS build-stage
WORKDIR /app
COPY main /app/main
#RUN go mod tidy && CGO_ENABLED=0 GOOS=linux go build -o /cmd


FROM gcr.io/distroless/base-debian11 AS build-release-stage
WORKDIR /

COPY --from=build-stage /app/main /cmd
EXPOSE 8080
USER nonroot:nonroot
ENTRYPOINT ["/cmd"]