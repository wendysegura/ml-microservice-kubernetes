#!/usr/bin/env bash

# Build image and add a descriptive tag
docker build -t microservices .

# List docker images
docker image ls

# Run flask app (might be wrong double check)
docker run -p 8000:80 microservices
