#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub
# create pd command 
# kubectl run api5-pod --image=api5 --port=8000 --generator=run/v1


# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=rgarlin/api5

# Step 2
# Run the Docker Hub container with kubernetes
docker login --username rgarlin --password password
docker run --name kubectl api5
# kubectl run api5-7 --image=docker.io/rgarlin/api5:firsttry


# Step 3:
# List kubernetes pods
kubectl get pods --all-namespaces

# Step 4:
# Forward the container port to a host
kubectl port-forward deployments/api5-7 8000:80
