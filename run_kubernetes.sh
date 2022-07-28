#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=izictemi/webapp:1.0

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy webapp --image=$dockerpath


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl wait --for=condition=Ready pod/$(kubectl get pods --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')
kubectl port-forward pod/$(kubectl get pods --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}') --address 0.0.0.0 8000:80

