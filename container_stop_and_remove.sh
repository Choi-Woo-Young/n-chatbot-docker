#!/bin/bash
set -e

cd /Users/service_one/StudioProjects/n-chatbot

echo "Stopping and removing containers, networks, and volumes..."
docker compose down --volumes --remove-orphans

echo "모든 컨테이너와 네트워크, 볼륨이 삭제되었습니다."
