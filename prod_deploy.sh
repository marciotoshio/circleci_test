#!/usr/bin/env bash

set -e

git pull origin main
docker compose -f docker-compose.prod.yml build
./docker/rails_prod db:migrate
./docker/down_prod
./docker/up_prod
docker rmi $(docker images -a --filter=dangling=true -q)
