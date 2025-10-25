# Use a lightweight base image
FROM alpine:latest

# Add a 1KB text file for example
RUN base64 /dev/urandom | head -c 1024 > /sample.txt

# Set working directory
WORKDIR /

# Default command
CMD ["cat", "/sample.txt"]
