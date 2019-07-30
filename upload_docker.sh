#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=microservices

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username gwenevere05
docker tag microservices gwenevere05/microservices:v1

# Step 3:
# Push image to a docker repository
docker push gwenevere05/microservices:v1
