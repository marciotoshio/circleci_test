#!/usr/bin/env bash

set -e

cp example.dev.env dev.env
docker compose build
./docker/rails new . --database postgresql --css tailwind --skip-test
./docker/bundle
cp example.database.yml config/database.yml
./docker/rails db:create
./docker/up
