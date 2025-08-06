    # Stage 1: Build the Go application
    FROM golang:1.22-alpine AS builder

    WORKDIR /app
    COPY . .
    RUN go install github.com/bernardo-bruning/ollama-copilot@latest
    EXPOSE 11437
    EXPOSE 11435

    CMD ["ollama-copilot"]
