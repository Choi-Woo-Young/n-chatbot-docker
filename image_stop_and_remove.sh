#!/bin/bash
set -e

cd /Users/service_one/StudioProjects/n-chatbot-docker

echo "Stopping and removing containers, networks, and volumes..."
docker compose down --volumes --remove-orphans

echo "Removing all Docker images (모든 이미지가 삭제됩니다)..."
docker rmi -f $(docker images -q)

echo "모든 컨테이너, 네트워크, 볼륨 및 이미지가 삭제되었습니다."
