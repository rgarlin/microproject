#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=api5

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username rgarlin --password password
docker tag efae7d4797d0 rgarlin/api5:firsttry 

# Step 3:
# Push image to a docker repository
docker image push rgarlin/api5 
