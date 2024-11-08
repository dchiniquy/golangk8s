#mutli stage build
FROM golang:latest as builder

ENV CGO_ENABLED 0
ENV GOOS linux

WORKDIR $GOPATH/src/go-rest-api/
COPY go.mod go.sum ./
RUN go mod download
COPY . .

# Build binary
RUN go build -a -installsuffix cgo -o /app/main .

#### Build Small(Tiny) Image ####
FROM alpine:latest

WORKDIR /root/

# Copy the pre-built binary file from the previous stage
COPY --from=builder /app/main .

# Run the service
CMD [ "./main" ]