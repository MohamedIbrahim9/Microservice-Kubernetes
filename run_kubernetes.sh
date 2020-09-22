#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=mohamedibrahim9/microservice-kubernetes
# Step 2
# Run the Docker Hub container with kubernetes
kubectl run my-python-app --image=$dockerpath --port=8000

# 20 Sec sleep to wait for pods 
echo "Please wait for pods to be available"
sleep 20s

# Step 3:
# List kubernetes pods
kubectl get pods 
# Step 4:
# Forward the container port to a host
kubectl port-forward my-python-app 8000:80
