    # Stage 1: Build the Go application
    FROM golang:1.22-alpine

    WORKDIR /app
    COPY . .
    RUN go install github.com/clairesrc/ollama-copilot@latest
    EXPOSE 11437
    EXPOSE 11435

    CMD ["ollama-copilot"]
