FROM alpine:3.17.1

# Install redis-cli, aws-cli, kubectl
RUN apk add --no-cache redis aws-cli curl && \
    curl -LO "https://dl.k8s.io/release/v1.26.1/bin/linux/amd64/kubectl" && \
    chmod +x ./kubectl && \
    mv ./kubectl /usr/local/bin/kubectl
