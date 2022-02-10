#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=izzyandrade/udacity-capstone

# Step 2:  
# Authenticate & tag
docker login -u $1 -p $2
docker build -t udacity-capstone .
docker tag udacity-capstone $dockerpath:$3
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push $dockerpath:$3