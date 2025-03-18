#!/bin/bash
set -e

cd /Users/service_one/StudioProjects/n-chatbot-docker

echo "Building nchatbot-front image..."
docker build -f ./docker/Dockerfile-front -t nchatbot-front:0.1 .

echo "Building nchatbot-api image..."
docker build -f ./docker/Dockerfile-api -t nchatbot-api:0.1 .

echo "Starting containers with docker compose..."
docker compose up --build --watch

